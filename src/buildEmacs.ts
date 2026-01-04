/**
 * Build Emacs Themes from Human Theme Configuration
 * 
 * Generates Emacs 30 compatible theme files using deftheme approach
 */

import * as fs from "fs";
import * as path from "path";
import { themeConfigs } from "./themeConfig";
import { generateEmacsTheme } from "./emacsThemeGenerator";

console.log("🎨 Human Theme - Emacs 30 Generator\n");
console.log("Building research-grade, scientifically-validated Emacs themes...\n");

// Create emacs directory if it doesn't exist
const emacsDir = path.join(__dirname, "..", "emacs");
if (!fs.existsSync(emacsDir)) {
  fs.mkdirSync(emacsDir, { recursive: true });
}

// Generate all themes
for (const config of themeConfigs) {
  const themeName = config.name.toLowerCase().replace(/\s+/g, "-");
  const filename = `${themeName}-theme.el`;
  const themeContent = generateEmacsTheme(config);
  
  const outputPath = path.join(emacsDir, filename);
  fs.writeFileSync(outputPath, themeContent);
  
  console.log(`✓ Generated ${filename}`);
}

console.log("\n✓ All Emacs themes generated successfully!");
console.log("\nGenerated themes:");
console.log("  - human-dark-theme.el");
console.log("  - human-light-theme.el");
console.log("  - human-low-light-theme.el");
console.log("  - human-soft-theme.el");
console.log("  - human-warm-theme.el");
console.log("  - human-high-contrast-theme.el");

console.log("\nInstallation:");
console.log("  1. Copy theme files to ~/.emacs.d/themes/");
console.log("  2. Add to init.el:");
console.log("     (add-to-list 'custom-theme-load-path \"~/.emacs.d/themes/\")");
console.log("     (load-theme 'human-dark t)");
console.log("\nOr use M-x load-theme RET human-dark RET\n");
