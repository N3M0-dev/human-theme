# Human Theme for Emacs 30

Research-grade Emacs theme based on vision science and human perception. Designed with ecological color theory and scientifically validated for accessibility, eye comfort, and colorblind safety.

## Features

### Accessibility & Vision Science
- **WCAG 2.1 Compliant** - All themes meet AA standards minimum, many AAA (7:1+ contrast ratios)
- **Colorblind Validated** - LMS cone simulation testing for protanopia, deuteranopia, and tritanopia
- **Perceptual Uniformity** - CIELAB color space for consistent perceived differences
- **Eye Comfort Optimized** - Green-dominant palette aligned with peak photopic sensitivity (555nm)

### Six Scientifically Designed Variants
- **Human Dark** - General coding with optimal contrast and eye comfort
- **Human Light** - Bright environments with maintained accessibility
- **Human Low Light** - Evening/night use with reduced blue light for circadian rhythm preservation
- **Human Soft** - Reduced contrast for extended viewing comfort (by design, prioritizes comfort over maximum accessibility)
- **Human Warm** - Warm color temperature with reduced blue light
- **Human High Contrast** - Maximum accessibility for low vision users

## Installation

### Method 1: Manual Installation (Recommended)

1. **Download the theme files:**
   ```bash
   git clone https://github.com/N3M0-dev/human-theme.git
   ```

2. **Copy theme files to your Emacs themes directory:**
   ```bash
   mkdir -p ~/.emacs.d/themes
   cp human-theme/emacs/*.el ~/.emacs.d/themes/
   ```

3. **Add to your `init.el` or `.emacs`:**
   ```elisp
   ;; Add themes directory to load path
   (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
   
   ;; Load your preferred theme
   (load-theme 'human-dark t)
   ```

### Method 2: Direct Load Path

If you want to keep the themes in the repository directory:

```elisp
(add-to-list 'custom-theme-load-path "/path/to/human-theme/emacs/")
(load-theme 'human-dark t)
```

### Method 3: Use Package Manager (Future)

Once published to MELPA:
```elisp
(use-package human-theme
  :ensure t
  :config
  (load-theme 'human-dark t))
```

## Usage

### Switching Themes Interactively

Use Emacs' built-in theme switching:
```
M-x load-theme RET human-dark RET
```

Available themes:
- `human-dark`
- `human-light`
- `human-low-light`
- `human-soft`
- `human-warm`
- `human-high-contrast`

### Disable Current Theme Before Loading New One

```elisp
;; Disable all themes before loading a new one
(mapc #'disable-theme custom-enabled-themes)
(load-theme 'human-light t)
```

### Auto-Switch Based on Time of Day

```elisp
(defun my/auto-theme ()
  "Automatically switch theme based on time of day."
  (let ((hour (string-to-number (format-time-string "%H"))))
    (if (or (< hour 6) (>= hour 20))
        (load-theme 'human-low-light t)
      (load-theme 'human-dark t))))

(my/auto-theme)
```

### Use with Doom Emacs

Add to your `config.el`:
```elisp
(setq doom-theme 'human-dark)
```

First, add the theme files to `~/.doom.d/themes/` or your custom themes directory.

### Use with Spacemacs

Add to your `.spacemacs`:
```elisp
(defun dotspacemacs/user-config ()
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
  (load-theme 'human-dark t))
```

## Theme Characteristics

| Theme | Type | Background | Best For | WCAG | Colorblind Safety |
|-------|------|------------|----------|------|-------------------|
| **Human Dark** | Dark | `#101713` | General coding, default dark theme | ✓ AA/AAA | Good (2/3) |
| **Human Light** | Light | `#EDF3EB` | Bright environments, daytime coding | ✓ AA/AAA | ✓ Excellent (3/3) |
| **Human Low Light** | Dark | `#141210` | Evening/night, reduced blue light | ✓ AA/AAA | Good (2/3) |
| **Human Soft** | Light | `#F2F5F0` | Extended sessions, reduced eye strain | ✓ AA | Moderate |
| **Human Warm** | Light | `#F5F0E8` | Warm preference, reduced blue light | ✓ AA/AAA | Good (2/3) |
| **Human High Contrast** | Dark | `#000000` | Maximum accessibility, low vision | ✓ AAA | ✓ Excellent (3/3) |

## Supported Modes & Features

The Human theme provides comprehensive face definitions for:

### Core Emacs Features
- Font Lock (syntax highlighting)
- Line numbers (including `display-line-numbers-mode`)
- Mode line and header line
- Search and matching (isearch, lazy-highlight)
- Region and selection
- Parenthesis matching
- Fringe and borders

### Popular Packages
- **Org Mode** - Complete heading hierarchy, code blocks, TODO states
- **Markdown Mode** - Headers, code, links, emphasis
- **Magit** - Diff highlighting, branch colors, section highlighting
- **Company** - Completion tooltips with proper contrast
- **Flycheck/Flymake** - Error, warning, and info underlines
- **Git Gutter** - Added, deleted, modified indicators
- **Dired** - Directory highlighting, marked files
- **Whitespace Mode** - Trailing whitespace, tabs, spaces

## Color Palette

### Semantic Color Groups

**Greens (Keywords, Functions)** - 550nm wavelength (peak human photopic sensitivity)
- Keywords: Bold green for language keywords and control flow
- Functions: Moss green for function names and method calls
- High eye comfort scores (75-84/100)

**Teals (Types, Structure)** - 490-520nm wavelength
- Type definitions, classes, interfaces
- Operators and structural elements
- Excellent eye comfort (80-88/100)

**Ochre (Literals, Constants)** - 580-590nm wavelength
- String literals and warnings
- Numeric literals and constants
- Warm, earthy tones for data

**Reds (Errors, Alerts)** - 620-640nm wavelength
- Error messages and critical alerts
- High visibility for important notifications

**Browns (HTML, Markup)** - Autumn leaf aesthetic
- HTML/XML tags and structural markup
- Element attributes
- Natural appearance for document structure

**Grays (Comments, UI)** - Neutral tones
- Comments and disabled elements
- Subtle enough to de-emphasize, clear enough to read

## Building from Source

If you want to rebuild the themes after modifying the source:

```bash
cd human-theme
npm install
npm run build:emacs
```

This will regenerate all theme files in the `emacs/` directory.

## Validation

All themes undergo rigorous scientific validation:

### WCAG 2.1 Contrast Ratios
All themes pass WCAG AA or AAA standards for critical color pairs.

### Colorblind Safety (LMS Cone Simulation)
Themes are tested with Brettel et al. (1997) LMS cone simulation for:
- Protanopia (red-blind)
- Deuteranopia (green-blind)
- Tritanopia (blue-blind)

### Eye Comfort Scores
Colors are scored on a 0-100 scale based on photopic sensitivity curves:
- Green tones: 75-88 (Excellent)
- Teal tones: 79-88 (Excellent)
- Ochre tones: 52-58 (Good to Adequate)
- Red tones: 46-55 (Adequate, intentionally alerting)

## Troubleshooting

### Theme doesn't load
1. Ensure the theme file is in a directory listed in `custom-theme-load-path`
2. Check for syntax errors: `M-x check-parens` in the theme file
3. Verify Emacs version: `M-x emacs-version` (requires Emacs 30+)

### Colors look wrong
1. Check your terminal supports 24-bit color (truecolor)
2. Test in GUI Emacs if using terminal
3. Ensure no other color customizations conflict

### Theme not applying completely
1. Disable all themes first: `(mapc #'disable-theme custom-enabled-themes)`
2. Reload theme: `(load-theme 'human-dark t)`
3. Check if package-specific faces need customization

## Modern Emacs Theme API

This theme uses Emacs 30's modern theme system:
- `deftheme` - Define theme metadata
- `custom-theme-set-faces` - Set face attributes
- **NOT** using the old `color-theme.el` package

This ensures:
- Proper theme switching and disabling
- No conflicts with Emacs' built-in theme system
- Future-proof compatibility
- Clean unloading when switching themes

## Contributing

Contributions are welcome! When suggesting changes:
- Maintain WCAG AA minimum for all critical color pairs
- Test with colorblind simulation tools
- Preserve the green-dominant, ecology-inspired palette
- Update both TypeScript source and regenerate themes

## References

This theme is grounded in peer-reviewed research:

1. **CIE (1976)** - CIELAB color space standard
2. **Palmer & Schloss (2010)** - Ecological valence theory of color preference
3. **Brettel et al. (1997)** - Colorblind simulation methodology
4. **W3C (2018)** - WCAG 2.1 accessibility guidelines
5. **Stockman & Sharpe (2000)** - Photopic sensitivity and cone response

## License

MIT License - see LICENSE file for details.

---

**Human Theme for Emacs** - Bringing vision science to your text editor.  
Created with attention to accessibility, eye comfort, and evidence-based design.
