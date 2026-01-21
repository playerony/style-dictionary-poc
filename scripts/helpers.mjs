// Helper to generate Kotlin Palette code from tokens
export function generateKotlinPalette(tokens, themeName) {
  const propertyName = `${themeName}Color`;
  
  const toPascalCase = (str) => {
     return str
      .split(/[-_]/)
      .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
      .join('');
  };

  const categoryToClass = {
    text: 'TextColors',
    icon: 'IconColors',
    background: 'BackgroundColors',
    border: 'BorderColors',
    status: 'StatusColors',
    decoration: 'DecorationColors',
    general: 'GeneralColors',
    palette: 'Palette'
  };

  const categories = Object.keys(tokens);
  const mappedCategories = categories.filter(c => categoryToClass[c]);

  const categoryBlocks = mappedCategories.map(cat => {
    const className = categoryToClass[cat];
    const categoryTokens = tokens[cat];
    
    const props = Object.keys(categoryTokens).map(tokenKey => {
       // Skip metadata
       if (['filePath', 'isSource', 'original', 'name', 'path', 'attributes'].includes(tokenKey)) return null;

       const token = categoryTokens[tokenKey];
       if (token && token.value !== undefined) {
         return `                ${toPascalCase(tokenKey)} = ${token.value}`;
       }
       return null;
    }).filter(Boolean).join(',\n');
    
    if (!props) return null;

    return `            ${cat} = ${className}(\n${props}\n            )`;
  }).filter(Boolean).join(',\n');

  return `    val ${propertyName}: ColorPalette = 
        ColorPalette(
${categoryBlocks}
        )`;
}

// Helper to generate Swift Structs
export function generateSwiftDefinitions(tokens) {
  const toPascalCase = (str) => {
     return str
      .split(/[-_]/)
      .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
      .join('');
  };

  const categoryToClass = {
    text: 'TextColors',
    icon: 'IconColors',
    background: 'BackgroundColors',
    border: 'BorderColors',
    status: 'StatusColors',
    decoration: 'DecorationColors',
    general: 'GeneralColors',
    palette: 'Palette'
  };

  const categories = Object.keys(tokens);
  const mappedCategories = categories.filter(c => categoryToClass[c]);
  
  const structs = mappedCategories.map(cat => {
      const className = categoryToClass[cat];
      const categoryTokens = tokens[cat];
      const props = Object.keys(categoryTokens).map(tokenKey => {
          if (['filePath', 'isSource', 'original', 'name', 'path', 'attributes'].includes(tokenKey)) return null;
          return `    let ${toPascalCase(tokenKey)}: UIColor`;
      }).filter(Boolean).join('\n');
      
      return `struct ${className} {\n${props}\n}`;
  }).join('\n\n');

  const paletteProps = mappedCategories.map(cat => {
      return `    let ${cat}: ${categoryToClass[cat]}`;
  }).join('\n');

  const paletteStruct = `struct ColorPalette {\n${paletteProps}\n}`;

  return `${structs}\n\n${paletteStruct}`;
}

// Helper to generate Swift Palette code from tokens
export function generateSwiftPalette(tokens, themeName) {
  const propertyName = `${themeName}Color`;
  
  const toPascalCase = (str) => {
     return str
      .split(/[-_]/)
      .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
      .join('');
  };

  const categoryToClass = {
    text: 'TextColors',
    icon: 'IconColors',
    background: 'BackgroundColors',
    border: 'BorderColors',
    status: 'StatusColors',
    decoration: 'DecorationColors',
    general: 'GeneralColors',
    palette: 'Palette'
  };

  const categories = Object.keys(tokens);
  const mappedCategories = categories.filter(c => categoryToClass[c]);

  const categoryBlocks = mappedCategories.map(cat => {
    const className = categoryToClass[cat];
    const categoryTokens = tokens[cat];
    
    const props = Object.keys(categoryTokens).map(tokenKey => {
       if (['filePath', 'isSource', 'original', 'name', 'path', 'attributes'].includes(tokenKey)) return null;

       const token = categoryTokens[tokenKey];
       if (token && token.value !== undefined) {
         return `            ${toPascalCase(tokenKey)}: ${token.value}`;
       }
       return null;
    }).filter(Boolean).join(',\n');
    
    if (!props) return null;

    return `        ${cat}: ${className}(\n${props}\n        )`;
  }).filter(Boolean).join(',\n');

  return `    static let ${propertyName} = ColorPalette(
${categoryBlocks}
    )`;
}
