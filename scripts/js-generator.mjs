import fs from 'fs';
import StyleDictionary from 'style-dictionary';
import { registerTransforms } from './transforms.mjs';

function getCleanTokens(obj) {
  if (typeof obj !== 'object' || obj === null) return obj;
  if (obj.hasOwnProperty('value')) {
    return obj.value;
  }
  const newObj = {};
  for (const key in obj) {
    if (!['filePath', 'isSource', 'original', 'name', 'path', 'attributes'].includes(key)) {
      newObj[key] = getCleanTokens(obj[key]);
    }
  }
  return newObj;
}

export async function generateJS() {
  const parts = ['global', 'light', 'dark'];
  const outputs = {};

  for (const part of parts) {
    const source = part === 'global' ? [`tokens/${part}.json`] : [`tokens/global.json`, `tokens/${part}.json`];
    
    // Create temporary SD instance
    const tempConfig = {
      source: source,
      platforms: {
        js: {
          transforms: ["attribute/cti", "size/numberToPx", "color/css", "time/seconds/css"] // No name transform to keep structure
        }
      }
    };
    
    const tempSD = new StyleDictionary(tempConfig);
    registerTransforms(tempSD);
    
    const tokens = await tempSD.exportPlatform('js');
    
    // For light/dark, we want to exclude global tokens if they are not part of the theme
    // But since we want the *structure* of light/dark, and they don't contain global tokens (based on my check),
    // we just need to extract the keys that belong to light/dark.
    // However, if we include global.json in source, the dictionary WILL contain global tokens.
    // So we need to filter them out.
    // We can filter by filePath.
    
    let cleanTokens = getCleanTokens(tokens);
    
    if (part !== 'global') {
      // Filter out keys that are from global.json
      // Actually, since tokens is the merged dictionary, it's hard to filter by filePath after getCleanTokens (which strips metadata).
      // We should filter BEFORE getCleanTokens.
      
      const filteredTokens = {};
      
      // Helper to traverse and keep only tokens from specific file
      function filterByFile(node, filename) {
        if (node.hasOwnProperty('value')) {
          return node.filePath && node.filePath.endsWith(filename) ? node : null;
        }
        const newNode = {};
        let hasChild = false;
        for (const key in node) {
          if (!['filePath', 'isSource', 'original', 'name', 'path', 'attributes'].includes(key)) {
            const result = filterByFile(node[key], filename);
            if (result) {
              newNode[key] = result;
              hasChild = true;
            }
          }
        }
        return hasChild ? newNode : null;
      }
      
      const fileSpecificTokens = filterByFile(tokens, `${part}.json`);
      cleanTokens = getCleanTokens(fileSpecificTokens || {});
    }
    
    outputs[part] = cleanTokens;
  }

  const jsContent = `/**
 * Do not edit directly, this file was auto-generated.
 */

export const global = ${JSON.stringify(outputs.global, null, 2)};

export const light = ${JSON.stringify(outputs.light, null, 2)};

export const dark = ${JSON.stringify(outputs.dark, null, 2)};
`;

  // Ensure directory exists
  if (!fs.existsSync('build/js')) {
    fs.mkdirSync('build/js', { recursive: true });
  }

  fs.writeFileSync('build/js/tokens.js', jsContent);
  
  // Helper to generate TS types
  function generateTypeDefinition(obj, indent = 0) {
    if (typeof obj !== 'object' || obj === null) {
      if (typeof obj === 'string') return 'string';
      if (typeof obj === 'number') return 'number';
      return 'any';
    }

    const spaces = ' '.repeat(indent);
    const entries = Object.entries(obj).map(([key, value]) => {
      // Handle keys that need quotes (like "12", "1/2")
      const safeKey = /^[a-zA-Z_$][a-zA-Z0-9_$]*$/.test(key) ? key : `'${key}'`;
      return `${spaces}  ${safeKey}: ${generateTypeDefinition(value, indent + 2)};`;
    });

    return `{\n${entries.join('\n')}\n${spaces}}`;
  }

  // Generate detailed d.ts
  const dtsContent = `/**
 * Do not edit directly, this file was auto-generated.
 */

export const global: ${generateTypeDefinition(outputs.global)};

export const light: ${generateTypeDefinition(outputs.light)};

export const dark: ${generateTypeDefinition(outputs.dark)};
`;
  fs.writeFileSync('build/js/tokens.d.ts', dtsContent);
  
  console.log('✔︎ build/js/tokens.js');
  console.log('✔︎ build/js/tokens.d.ts');
}
