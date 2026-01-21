export function registerCustomFormats(sdInstance) {
  sdInstance.registerFormat({
    name: 'compose/object',
    format: function({ dictionary, file, options }) {
      const packageName = file.packageName || 'com.styledictionary.tokens';
      const className = file.className || 'StyleDictionary';
      
      return `package ${packageName}

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

object ${className} {
${dictionary.allTokens.map(prop => `    val ${prop.name} = ${prop.value}`).join('\n')}
}`;
    }
  });
}
