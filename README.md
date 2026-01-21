# Style Dictionary POC

A Proof of Concept for generating cross-platform design tokens using [Style Dictionary](https://amzn.github.io/style-dictionary/). This project generates consistent color palettes and design tokens for Android (Jetpack Compose), iOS (Swift), CSS, and JavaScript/TypeScript.

## 🚀 Usage

### Prerequisites
- Node.js (v18+)
- npm or pnpm

### Installation
```bash
npm install
# or
pnpm install
```

### Build Tokens
To transform the source tokens into platform-specific files:
```bash
npm run build
# or directly
node build.mjs
```

---

## 📂 Input Files (Source Tokens)

The source of truth for all design tokens is located in the `tokens/` directory.

| File | Description |
|------|-------------|
| [`tokens/global.json`](tokens/global.json) | Defines primitive values (global palettes, base dimensions, typography) that are not theme-specific. |
| [`tokens/light.json`](tokens/light.json) | Semantic mappings for the **Light Theme**. Maps semantic names (e.g., `text.primary`) to global primitives. |
| [`tokens/dark.json`](tokens/dark.json) | Semantic mappings for the **Dark Theme**. Overrides specific token values for dark mode. |

---

## 📦 Output Files (Generated Assets)

The build process transforms the input tokens into the `build/` directory, organized by platform.

### 🤖 Android (Jetpack Compose)
- **File:** [`build/compose/StyleDictionaryColor.kt`](build/compose/StyleDictionaryColor.kt)
- **Format:** Kotlin Object with `ColorPalette`
- **Description:** A combined file containing both Light and Dark theme definitions.
- **Structure:**
  ```kotlin
  object SetmoreColors {
      val LightColor = ColorPalette(
          text = TextColors(...),
          icon = IconColors(...)
      )
      val DarkColor = ColorPalette(...)
  }
  ```

### 🍎 iOS (Swift)
- **File:** [`build/ios/SetmoreColors.swift`](build/ios/SetmoreColors.swift)
- **Format:** Swift Structs & Classes
- **Description:** Designed to mimic the Android structure for consistency.
- **Structure:**
  ```swift
  class SetmoreColors {
      static let LightColor = ColorPalette(...)
      static let DarkColor = ColorPalette(...)
  }
  ```
- **File:** [`build/ios/StyleDictionary+Class.swift`](build/ios/StyleDictionary+Class.swift)
  - Legacy flat structure (kept for backward compatibility).

### 🌐 CSS
- **File:** [`build/css/variables.css`](build/css/variables.css)
- **Format:** CSS Custom Properties (Variables)
- **Description:** Contains all tokens as root-level CSS variables.
  ```css
  :root {
    --text-primary: #111111;
    /* ... */
  }
  ```

### 📜 JavaScript / TypeScript
- **File:** [`build/js/tokens.js`](build/js/tokens.js)
- **Format:** ES Modules
- **Description:** Exported objects for `global`, `light`, and `dark` tokens.
- **File:** [`build/js/tokens.d.ts`](build/js/tokens.d.ts)
- **Description:** TypeScript type definitions for the generated JS tokens.

---

## 🛠 Project Structure

- **`build.mjs`**: The main build script. Orchestrates the build process for all platforms.
- **`scripts/`**: Modular helper scripts.
  - [`scripts/transforms.mjs`](scripts/transforms.mjs): Custom Style Dictionary transforms (e.g., color conversions, size units).
  - [`scripts/formats.mjs`](scripts/formats.mjs): Custom output formats.
  - [`scripts/helpers.mjs`](scripts/helpers.mjs): Helpers for generating specific code structures (Kotlin/Swift palettes).
  - [`scripts/js-generator.mjs`](scripts/js-generator.mjs): Custom logic for JS/TS generation.
