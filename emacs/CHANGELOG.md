# Changelog - Human Theme for Emacs

All notable changes to the Emacs port of Human Theme will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.1] - 2026-01-04

### Added
- **Initial Emacs 30 Support**
  - Modern `deftheme` implementation (not using old `color-theme.el`)
  - Six scientifically validated theme variants:
    - `human-dark` - General coding with optimal contrast
    - `human-light` - Bright environments with maintained accessibility
    - `human-low-light` - Evening/night use with reduced blue light
    - `human-soft` - Reduced contrast for extended viewing
    - `human-warm` - Warm color temperature
    - `human-high-contrast` - Maximum accessibility for low vision

- **Comprehensive Face Coverage**
  - All standard Emacs faces (font-lock, mode-line, region, etc.)
  - Line numbers (including `display-line-numbers-mode`)
  - Org mode (8 heading levels, blocks, TODO states, tags)
  - Markdown mode (headers, code, links, emphasis)
  - Magit (branches, diffs, status sections)
  - Company (completion tooltips)
  - Flycheck/Flymake (error checking)
  - Git Gutter (change indicators)
  - Dired (file manager)
  - Whitespace mode

- **Documentation**
  - Complete README with installation instructions
  - Face reference guide (FACES.md)
  - Example configuration file with utilities
  - Theme verification script

- **Build System**
  - TypeScript generator for Emacs themes
  - Automated theme generation from source config
  - Integration with existing VS Code build system

### Design Philosophy
- WCAG 2.1 AA/AAA compliance for accessibility
- Colorblind validated with LMS cone simulation
- Perceptual uniformity using CIELAB color space
- Eye comfort optimized with green-dominant palette (555nm)
- Ecological color theory inspired by Palmer & Schloss (2010)

### Technical Details
- Requires Emacs 30.0 or higher
- Uses modern `deftheme` and `custom-theme-set-faces`
- Lexical binding enabled for better performance
- No external dependencies required

### Known Limitations
- Some third-party packages may require face customization
- Terminal Emacs may require 24-bit color support for best results
- Theme switching may require manual cleanup of previous theme

### Future Plans
- [ ] MELPA package submission
- [ ] Terminal color scheme variants
- [ ] Additional package-specific faces (treemacs, lsp-ui, etc.)
- [ ] Theme customization variables
- [ ] Emacs 29 compatibility (if requested)

## Version Alignment

This Emacs port follows the version numbering of the main Human Theme project:
- Version 1.1.1 aligns with VS Code theme version 1.1.1
- Color palettes are identical across all platforms
- Scientific validation results apply to all theme variants

## Credits

- Original theme design: Tom Hall
- Color science and validation: Human Theme Authors
- Emacs port: Human Theme Contributors
- Based on research by Palmer & Schloss (2010), Brettel et al. (1997), and CIE (1976)

## License

MIT License - see LICENSE file in repository root

## Links

- GitHub Repository: https://github.com/N3M0-dev/human-theme
- VS Code Marketplace: https://marketplace.visualstudio.com/items?itemName=TomHall.human-theme
- Issue Tracker: https://github.com/N3M0-dev/human-theme/issues
- Documentation: https://github.com/N3M0-dev/human-theme/tree/main/emacs
