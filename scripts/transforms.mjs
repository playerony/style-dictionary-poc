// Helper to register shared transforms
export function registerTransforms(sdInstance) {
  // Android Transforms
  sdInstance.registerTransform({
    name: 'size/numberToSp',
    type: 'value',
    filter: (token) => token.type === 'fontSize',
    transform: (token) => `${token.value}sp`
  });

  sdInstance.registerTransform({
    name: 'size/numberToDp',
    type: 'value',
    filter: (token) => ['dimension', 'lineHeight', 'letterSpacing', 'spacing', 'borderRadius', 'borderWidth', 'sizing'].includes(token.type),
    transform: (token) => `${token.value}dp`
  });

  // Swift Transforms
  sdInstance.registerTransform({
    name: 'size/numberToCGFloat',
    type: 'value',
    filter: (token) => ['fontSize', 'lineHeight', 'letterSpacing', 'dimension', 'spacing', 'borderRadius', 'borderWidth', 'sizing'].includes(token.type),
    transform: (token) => `CGFloat(${parseFloat(token.value).toFixed(2)})`
  });

  sdInstance.registerTransform({
    name: 'value/swift/quoted',
    type: 'value',
    filter: (token) => token.type === 'fontFamily',
    transform: (token) => `"${token.value}"`
  });

  sdInstance.registerTransform({
    name: 'time/seconds',
    type: 'value',
    filter: (token) => token.type === 'time',
    transform: (token) => {
      const val = parseFloat(token.value);
      return (val / 1000.0).toFixed(2);
    }
  });

  // CSS/JS Transforms
  sdInstance.registerTransform({
    name: 'size/numberToPx',
    type: 'value',
    filter: (token) => ['fontSize', 'lineHeight', 'letterSpacing', 'dimension', 'spacing', 'borderRadius', 'borderWidth', 'sizing'].includes(token.type),
    transform: (token) => `${token.value}px`
  });

  sdInstance.registerTransform({
    name: 'time/seconds/css',
    type: 'value',
    filter: (token) => token.type === 'time',
    transform: (token) => {
      const val = parseFloat(token.value);
      return `${(val / 1000.0).toFixed(2)}s`;
    }
  });

  // Compose Transforms
  sdInstance.registerTransform({
    name: 'color/compose',
    type: 'value',
    filter: (token) => token.type === 'color',
    transform: (token) => {
      // Handle hex colors
      let hex = token.value;
      if (hex.startsWith('#')) {
        hex = hex.substring(1);
      }
      if (hex.length === 6) {
        return `Color(0xFF${hex.toUpperCase()})`;
      } else if (hex.length === 8) {
        // Convert RGBA (standard) to ARGB (Android)
        const r = hex.substring(0, 2);
        const g = hex.substring(2, 4);
        const b = hex.substring(4, 6);
         const a = hex.substring(6, 8);
         return `Color(0x${(a + r + g + b).toUpperCase()})`;
       }
       return token.value;
    }
  });

  sdInstance.registerTransform({
    name: 'size/compose/dp',
    type: 'value',
    filter: (token) => ['dimension', 'lineHeight', 'letterSpacing', 'spacing', 'borderRadius', 'borderWidth', 'sizing'].includes(token.type),
    transform: (token) => `${token.value}.dp`
  });

  sdInstance.registerTransform({
    name: 'size/compose/sp',
    type: 'value',
    filter: (token) => token.type === 'fontSize',
    transform: (token) => `${token.value}.sp`
  });
}
