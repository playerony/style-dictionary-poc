import StyleDictionary from 'style-dictionary';
import fs from 'fs';
import { registerTransforms } from './scripts/transforms.mjs';
import { registerCustomFormats } from './scripts/formats.mjs';
import { generateKotlinPalette, generateSwiftDefinitions, generateSwiftPalette } from './scripts/helpers.mjs';
import { generateJS } from './scripts/js-generator.mjs';

async function buildPlatforms() {
  // 1. Light Theme Config (Builds CSS and Size, and prepares Color)
  console.log('\nBuilding Light Theme...');
  const lightConfig = {
    source: ["tokens/global.json", "tokens/light.json"],
    platforms: {
      compose: {
        transforms: ["attribute/cti", "name/camel", "color/compose", "size/compose/dp", "size/compose/sp"],
        buildPath: "build/compose/",
        files: []
      },
      css: {
        transforms: ["attribute/cti", "name/kebab", "time/seconds/css", "size/numberToPx", "color/css"],
        buildPath: "build/css/",
        files: [{
          destination: "variables.css",
          format: "css/variables"
        }]
      },
      ios: {
        transforms: ["attribute/cti", "name/camel", "color/UIColorSwift", "content/swift/literal", "asset/swift/literal", "size/numberToCGFloat", "value/swift/quoted", "time/seconds"],
        buildPath: "build/ios/",
        files: [{
           destination: "StyleDictionary+Class.swift",
           format: "ios-swift/class.swift",
           className: "StyleDictionary",
           options: {
             className: "StyleDictionary"
           }
         }]
      }
    }
  };

  const sdLight = new StyleDictionary(lightConfig);
  registerTransforms(sdLight);
  registerCustomFormats(sdLight);
  
  await sdLight.buildPlatform('css');
  await sdLight.buildPlatform('ios');
  await sdLight.buildPlatform('compose'); // Builds Size file (now skipped)
  const lightTokens = await sdLight.exportPlatform('compose'); // Get transformed tokens for manual color file gen
  const lightTokensIos = await sdLight.exportPlatform('ios'); // Export iOS tokens

  // 2. Dark Theme Config (Prepares Color)
  console.log('\nBuilding Dark Theme...');
  const darkConfig = {
    source: ["tokens/global.json", "tokens/dark.json"],
    platforms: {
      compose: {
        transforms: ["attribute/cti", "name/camel", "color/compose", "size/compose/dp", "size/compose/sp"]
      },
      ios: {
        transforms: ["attribute/cti", "name/camel", "color/UIColorSwift", "content/swift/literal", "asset/swift/literal", "size/numberToCGFloat", "value/swift/quoted", "time/seconds"]
      }
    }
  };

  const sdDark = new StyleDictionary(darkConfig);
  registerTransforms(sdDark);
  const darkTokens = await sdDark.exportPlatform('compose');
  const darkTokensIos = await sdDark.exportPlatform('ios');

  // 3. Generate Combined Color File
  console.log('\nGenerating Combined Color File...');
  
  const lightPalette = generateKotlinPalette(lightTokens, 'Light');
  const darkPalette = generateKotlinPalette(darkTokens, 'Dark');

  const imports = [
    'package com.anywhere.androiddesignsystem.brand',
    '',
    'import androidx.compose.ui.graphics.Color',
    'import com.anywhere.androiddesignsystem.components.attributes.BackgroundColors',
    'import com.anywhere.androiddesignsystem.components.attributes.BorderColors',
    'import com.anywhere.androiddesignsystem.components.attributes.ColorPalette',
    'import com.anywhere.androiddesignsystem.components.attributes.DecorationColors',
    'import com.anywhere.androiddesignsystem.components.attributes.EventColorSet',
    'import com.anywhere.androiddesignsystem.components.attributes.EventColors',
    'import com.anywhere.androiddesignsystem.components.attributes.GeneralColors',
    'import com.anywhere.androiddesignsystem.components.attributes.IconColors',
    'import com.anywhere.androiddesignsystem.components.attributes.Palette',
    'import com.anywhere.androiddesignsystem.components.attributes.PressStateColors',
    'import com.anywhere.androiddesignsystem.components.attributes.StatusColors',
    'import com.anywhere.androiddesignsystem.components.attributes.TextColors'
  ].join('\n');

  const fileContent = `${imports}

internal object SetmoreColors {

${lightPalette}

${darkPalette}
}`;

  if (!fs.existsSync('build/compose')) {
    fs.mkdirSync('build/compose', { recursive: true });
  }

  fs.writeFileSync('build/compose/StyleDictionaryColor.kt', fileContent);
  console.log('✔︎ build/compose/StyleDictionaryColor.kt');

  // Remove separate dark file if it exists
  if (fs.existsSync('build/compose/StyleDictionaryColorDark.kt')) {
    fs.unlinkSync('build/compose/StyleDictionaryColorDark.kt');
    console.log('✔︎ Removed build/compose/StyleDictionaryColorDark.kt');
  }

  // 4. Generate Combined Swift File
  console.log('\nGenerating Combined Swift File...');
  const swiftDefinitions = generateSwiftDefinitions(lightTokensIos);
  const lightPaletteSwift = generateSwiftPalette(lightTokensIos, 'Light');
  const darkPaletteSwift = generateSwiftPalette(darkTokensIos, 'Dark');
  
  const swiftContent = `import UIKit

${swiftDefinitions}

class SetmoreColors {
${lightPaletteSwift}

${darkPaletteSwift}
}
`;

  if (!fs.existsSync('build/ios')) {
    fs.mkdirSync('build/ios', { recursive: true });
  }

  fs.writeFileSync('build/ios/SetmoreColors.swift', swiftContent);
  console.log('✔︎ build/ios/SetmoreColors.swift');
}

await buildPlatforms();
await generateJS();
