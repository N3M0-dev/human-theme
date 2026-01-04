# Human Theme - Face Reference Guide

This document provides a comprehensive reference of all faces defined in the Human theme and what they control.

## Base Faces

| Face | Purpose | Example |
|------|---------|---------|
| `default` | Base text color and background | All text |
| `cursor` | Text cursor | Blinking cursor in buffer |
| `region` | Selected text | Visual selection |
| `highlight` | Generic highlighting | Search results, etc |
| `hl-line` | Current line highlight | Line under cursor |
| `fringe` | Fringe area | Left/right margins |
| `shadow` | De-emphasized text | Dimmed text |
| `trailing-whitespace` | Trailing whitespace | End of line spaces |

## Syntax Highlighting (Font Lock)

| Face | Purpose | Syntax Elements |
|------|---------|-----------------|
| `font-lock-builtin-face` | Built-in functions | `len()`, `print()` in Python |
| `font-lock-comment-face` | Comments | `// comment`, `# comment` |
| `font-lock-comment-delimiter-face` | Comment delimiters | `//`, `/*`, `#` |
| `font-lock-constant-face` | Constants | `true`, `false`, `null`, `PI` |
| `font-lock-doc-face` | Documentation strings | Docstrings, JSDoc |
| `font-lock-function-name-face` | Function definitions | `def foo():`, `function bar()` |
| `font-lock-keyword-face` | Language keywords | `if`, `for`, `class`, `return` |
| `font-lock-string-face` | String literals | `"hello"`, `'world'` |
| `font-lock-type-face` | Type names | `int`, `String`, `interface` |
| `font-lock-variable-name-face` | Variable names | Variable declarations |
| `font-lock-warning-face` | Warnings in code | Deprecated usage |
| `font-lock-preprocessor-face` | Preprocessor directives | `#include`, `#define` |

## User Interface

| Face | Purpose | Location |
|------|---------|----------|
| `mode-line` | Active mode line | Bottom of active window |
| `mode-line-inactive` | Inactive mode line | Bottom of inactive windows |
| `mode-line-buffer-id` | Buffer name in mode line | Current buffer name |
| `mode-line-emphasis` | Emphasized mode line text | Important indicators |
| `header-line` | Header line | Top of window |
| `vertical-border` | Border between windows | Window separators |
| `window-divider` | Window divider | Split window borders |

## Line Numbers

| Face | Purpose | Display |
|------|---------|---------|
| `line-number` | Regular line numbers | Left margin numbers |
| `line-number-current-line` | Current line number | Active line number |

## Search and Matching

| Face | Purpose | Usage |
|------|---------|-------|
| `isearch` | Current search match | Active search result |
| `isearch-fail` | Failed search | No matches found |
| `lazy-highlight` | Other search matches | All other matches |
| `match` | Generic matching | Various matching contexts |
| `show-paren-match` | Matching parentheses | Balanced brackets |
| `show-paren-mismatch` | Mismatched parentheses | Unbalanced brackets |

## Links

| Face | Purpose | Example |
|------|---------|---------|
| `link` | Clickable links | URLs, file links |
| `link-visited` | Visited links | Previously opened links |

## Minibuffer

| Face | Purpose | Location |
|------|---------|----------|
| `minibuffer-prompt` | Minibuffer prompt | `M-x` prompt |

## Compilation

| Face | Purpose | Compiler Output |
|------|---------|----------------|
| `compilation-info` | Informational messages | Build info |
| `compilation-warning` | Warning messages | Compiler warnings |
| `compilation-error` | Error messages | Compilation errors |

## Dired (File Manager)

| Face | Purpose | Display |
|------|---------|---------|
| `dired-directory` | Directory names | Folders in dired |
| `dired-flagged` | Flagged files | Files marked for deletion |
| `dired-header` | Dired header | Directory listing header |
| `dired-mark` | Mark character | Mark indicator |
| `dired-marked` | Marked files | Selected files |
| `dired-symlink` | Symbolic links | Symlinked files |
| `dired-warning` | Warning indicators | Permissions issues |

## Org Mode

| Face | Purpose | Org Element |
|------|---------|-------------|
| `org-level-1` through `org-level-8` | Heading levels | `* Heading`, `** Subheading` |
| `org-document-title` | Document title | `#+TITLE:` |
| `org-document-info` | Document metadata | Author, date |
| `org-link` | Org links | `[[link]]` |
| `org-code` | Inline code | `~code~` |
| `org-verbatim` | Verbatim text | `=verbatim=` |
| `org-block` | Code blocks | Source blocks |
| `org-block-begin-line` | Block delimiters | `#+BEGIN_SRC` |
| `org-todo` | TODO keywords | `TODO`, `NEXT` |
| `org-done` | DONE keyword | `DONE` |
| `org-date` | Dates | `<2024-01-01>` |
| `org-tag` | Tags | `:tag:` |

## Markdown Mode

| Face | Purpose | Markdown Element |
|------|---------|------------------|
| `markdown-header-face-1` through `markdown-header-face-6` | Headers | `# H1`, `## H2` |
| `markdown-code-face` | Code blocks | ` ```code``` ` |
| `markdown-inline-code-face` | Inline code | `` `code` `` |
| `markdown-link-face` | Links | `[text](url)` |
| `markdown-url-face` | URLs | URL part of link |
| `markdown-bold-face` | Bold text | `**bold**` |
| `markdown-italic-face` | Italic text | `*italic*` |

## Company (Completion)

| Face | Purpose | Completion UI |
|------|---------|--------------|
| `company-tooltip` | Completion popup | Dropdown background |
| `company-tooltip-selection` | Selected completion | Current selection |
| `company-tooltip-common` | Common prefix | Matched characters |
| `company-tooltip-annotation` | Annotations | Type hints |
| `company-scrollbar-bg` | Scrollbar background | Scrollbar track |
| `company-scrollbar-fg` | Scrollbar foreground | Scrollbar thumb |

## Error Checking

| Face | Purpose | Diagnostics |
|------|---------|------------|
| `flycheck-error` | Error underlines | Syntax errors |
| `flycheck-warning` | Warning underlines | Warnings |
| `flycheck-info` | Info underlines | Information |
| `flymake-error` | Error underlines | Flymake errors |
| `flymake-warning` | Warning underlines | Flymake warnings |
| `flymake-note` | Note underlines | Flymake notes |

## Git Integration

| Face | Purpose | Git Status |
|------|---------|-----------|
| `git-gutter:added` | Added lines | New code |
| `git-gutter:deleted` | Deleted lines | Removed code |
| `git-gutter:modified` | Modified lines | Changed code |

## Magit (Git Client)

| Face | Purpose | Magit UI |
|------|---------|----------|
| `magit-branch-local` | Local branches | Local branch names |
| `magit-branch-remote` | Remote branches | Remote branch names |
| `magit-tag` | Git tags | Version tags |
| `magit-section-heading` | Section headers | Status sections |
| `magit-section-highlight` | Highlighted section | Selected section |
| `magit-diff-added` | Added lines in diff | Green additions |
| `magit-diff-removed` | Removed lines in diff | Red deletions |
| `magit-diff-context` | Context lines | Unchanged lines |
| `magit-hash` | Git commit hashes | SHA hashes |

## Whitespace Mode

| Face | Purpose | Whitespace Display |
|------|---------|-------------------|
| `whitespace-space` | Spaces | Space characters |
| `whitespace-tab` | Tabs | Tab characters |
| `whitespace-newline` | Newlines | Line endings |
| `whitespace-trailing` | Trailing whitespace | End of line spaces |
| `whitespace-line` | Long lines | Lines exceeding limit |

## Generic Status Faces

| Face | Purpose | Usage |
|------|---------|-------|
| `success` | Success messages | Operation succeeded |
| `warning` | Warning messages | Caution required |
| `error` | Error messages | Operation failed |

## Customization Example

To customize a face after loading the theme:

```elisp
(custom-theme-set-faces
 'human-dark
 ;; Make comments more visible
 '(font-lock-comment-face ((t (:foreground "#8A9A8F" :slant italic))))
 ;; Larger mode line text
 '(mode-line ((t (:height 1.1)))))
```

## Color Palette Reference

### Human Dark Theme Colors

- **Keywords**: `#A3D977` (Green)
- **Functions**: `#9AD1A3` (Moss Green)
- **Types**: `#8FBFA3` (Teal)
- **Strings**: `#E8B86F` (Ochre)
- **Comments**: `#6B7A6F` (Gray)
- **Errors**: `#E84040` (Red)
- **Background**: `#101713` (Dark Green)
- **Foreground**: `#D9D3C7` (Cream)

### Human Light Theme Colors

- **Keywords**: `#2E6B25` (Dark Green)
- **Functions**: `#2E6B2F` (Forest Green)
- **Types**: `#1A5F6F` (Dark Teal)
- **Strings**: `#7A5B1F` (Dark Ochre)
- **Comments**: `#6A6060` (Dark Gray)
- **Errors**: `#8A3A2A` (Dark Red)
- **Background**: `#EDF3EB` (Pale Sage)
- **Foreground**: `#2D2520` (Dark Brown)

For complete color palettes of all six theme variants, see `src/themeConfig.ts`.

## Finding Face Under Cursor

To discover which face is applied to text under the cursor:

```elisp
;; Show face at point
M-x describe-face

;; Or use this command
M-x customize-face

;; Or evaluate this expression
(get-text-property (point) 'face)
```

## Debugging Theme Issues

If a face doesn't look right:

1. Check which face is applied: `M-x describe-face RET`
2. Verify the theme is loaded: `M-x describe-theme RET human-dark RET`
3. Check for conflicting themes: `(message "%s" custom-enabled-themes)`
4. Reload the theme:
   ```elisp
   (mapc #'disable-theme custom-enabled-themes)
   (load-theme 'human-dark t)
   ```
