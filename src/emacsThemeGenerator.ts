/**
 * Emacs Theme Generator for Human Theme
 * 
 * Generates Emacs 30 compatible theme files using deftheme and custom-theme-set-faces
 * Modern approach - not using the old color-theme.el method
 */

import { ThemePalette } from "./themeConfig";

interface EmacsFaceMapping {
  face: string;
  foreground?: string;
  background?: string;
  weight?: string;
  slant?: string;
  underline?: boolean | string;
  box?: string;
  inverse?: boolean;
}

/**
 * Generate Emacs theme file content
 */
export function generateEmacsTheme(palette: ThemePalette): string {
  const themeName = palette.name.toLowerCase().replace(/\s+/g, "-");
  const themeDisplayName = palette.name;
  
  const faces: EmacsFaceMapping[] = [
    // Base faces
    { face: "default", foreground: palette.base.foreground, background: palette.base.background },
    { face: "cursor", background: palette.green.keywordBold },
    { face: "region", background: palette.ui.selectionBackground },
    { face: "highlight", background: palette.ui.wordHighlight },
    { face: "hl-line", background: palette.base.backgroundLighter },
    { face: "fringe", foreground: palette.gray.lineNumberMuted, background: palette.base.background },
    { face: "shadow", foreground: palette.gray.commentMuted },
    { face: "secondary-selection", background: palette.ui.selectionInactive },
    { face: "trailing-whitespace", background: palette.red.errorBackground },
    
    // Font lock faces (syntax highlighting)
    { face: "font-lock-builtin-face", foreground: palette.teal.typeSageBold },
    { face: "font-lock-comment-delimiter-face", foreground: palette.gray.commentMuted },
    { face: "font-lock-comment-face", foreground: palette.gray.commentMuted, slant: "italic" },
    { face: "font-lock-constant-face", foreground: palette.ochre.constantMuted },
    { face: "font-lock-doc-face", foreground: palette.gray.commentMuted, slant: "italic" },
    { face: "font-lock-function-name-face", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "font-lock-keyword-face", foreground: palette.green.keywordBold, weight: "bold" },
    { face: "font-lock-negation-char-face", foreground: palette.red.errorClay },
    { face: "font-lock-preprocessor-face", foreground: palette.teal.operatorSage },
    { face: "font-lock-regexp-grouping-backslash", foreground: palette.ochre.warningAmber },
    { face: "font-lock-regexp-grouping-construct", foreground: palette.ochre.warningAmber },
    { face: "font-lock-string-face", foreground: palette.ochre.warningAmber },
    { face: "font-lock-type-face", foreground: palette.teal.typeSageBold, weight: "bold" },
    { face: "font-lock-variable-name-face", foreground: palette.base.foreground },
    { face: "font-lock-warning-face", foreground: palette.ochre.warningAmber, weight: "bold" },
    
    // Mode line
    { face: "mode-line", foreground: palette.base.foreground, background: palette.base.backgroundLighter, box: palette.ui.border },
    { face: "mode-line-inactive", foreground: palette.gray.commentMuted, background: palette.base.backgroundDarker, box: palette.ui.border },
    { face: "mode-line-buffer-id", foreground: palette.green.keywordBold, weight: "bold" },
    { face: "mode-line-emphasis", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "mode-line-highlight", background: palette.ui.hoverBackground },
    
    // Line numbers
    { face: "line-number", foreground: palette.gray.lineNumberMuted, background: palette.base.background },
    { face: "line-number-current-line", foreground: palette.gray.lineNumberActive, background: palette.base.backgroundLighter, weight: "bold" },
    
    // Search and matching
    { face: "isearch", foreground: palette.base.background, background: palette.ui.findMatch, weight: "bold" },
    { face: "isearch-fail", foreground: palette.red.errorClay, weight: "bold" },
    { face: "lazy-highlight", background: palette.ui.findMatchHighlight },
    { face: "match", background: palette.ui.wordHighlight },
    
    // Parentheses matching
    { face: "show-paren-match", background: palette.ui.wordHighlightStrong, weight: "bold" },
    { face: "show-paren-mismatch", foreground: palette.red.errorClay, background: palette.red.errorBackground, weight: "bold" },
    
    // Links
    { face: "link", foreground: palette.teal.typeSageBold, underline: true },
    { face: "link-visited", foreground: palette.teal.operatorSage, underline: true },
    
    // Minibuffer
    { face: "minibuffer-prompt", foreground: palette.green.keywordBold, weight: "bold" },
    
    // Compilation
    { face: "compilation-info", foreground: palette.green.functionMoss },
    { face: "compilation-warning", foreground: palette.ochre.warningAmber, weight: "bold" },
    { face: "compilation-error", foreground: palette.red.errorClay, weight: "bold" },
    
    // Dired
    { face: "dired-directory", foreground: palette.teal.typeSageBold, weight: "bold" },
    { face: "dired-flagged", foreground: palette.red.errorClay, weight: "bold" },
    { face: "dired-header", foreground: palette.green.keywordBold, weight: "bold" },
    { face: "dired-mark", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "dired-marked", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "dired-symlink", foreground: palette.teal.operatorSage, slant: "italic" },
    { face: "dired-warning", foreground: palette.ochre.warningAmber, weight: "bold" },
    
    // Org mode
    { face: "org-level-1", foreground: palette.green.keywordBold, weight: "bold" },
    { face: "org-level-2", foreground: palette.teal.typeSageBold, weight: "bold" },
    { face: "org-level-3", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "org-level-4", foreground: palette.teal.operatorSage, weight: "bold" },
    { face: "org-level-5", foreground: palette.ochre.warmBold, weight: "bold" },
    { face: "org-level-6", foreground: palette.brown.htmlEarthy, weight: "bold" },
    { face: "org-level-7", foreground: palette.gray.tan, weight: "bold" },
    { face: "org-level-8", foreground: palette.gray.tanMuted, weight: "bold" },
    { face: "org-document-title", foreground: palette.green.keywordBold, weight: "bold" },
    { face: "org-document-info", foreground: palette.teal.typeSageBold },
    { face: "org-document-info-keyword", foreground: palette.gray.commentMuted },
    { face: "org-link", foreground: palette.teal.typeSageBold, underline: true },
    { face: "org-code", foreground: palette.ochre.warmBold },
    { face: "org-verbatim", foreground: palette.ochre.constantMuted },
    { face: "org-block", foreground: palette.base.foreground, background: palette.base.backgroundDarker },
    { face: "org-block-begin-line", foreground: palette.gray.commentMuted, background: palette.base.backgroundDarker },
    { face: "org-block-end-line", foreground: palette.gray.commentMuted, background: palette.base.backgroundDarker },
    { face: "org-todo", foreground: palette.red.errorClay, weight: "bold" },
    { face: "org-done", foreground: palette.green.statusGood, weight: "bold" },
    { face: "org-headline-done", foreground: palette.gray.commentMuted },
    { face: "org-date", foreground: palette.teal.operatorSage, underline: true },
    { face: "org-special-keyword", foreground: palette.gray.commentMuted },
    { face: "org-tag", foreground: palette.brown.attributeMuted },
    
    // Markdown mode
    { face: "markdown-header-face-1", foreground: palette.green.keywordBold, weight: "bold" },
    { face: "markdown-header-face-2", foreground: palette.teal.typeSageBold, weight: "bold" },
    { face: "markdown-header-face-3", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "markdown-header-face-4", foreground: palette.teal.operatorSage, weight: "bold" },
    { face: "markdown-header-face-5", foreground: palette.ochre.warmBold, weight: "bold" },
    { face: "markdown-header-face-6", foreground: palette.brown.htmlEarthy, weight: "bold" },
    { face: "markdown-code-face", foreground: palette.ochre.warmBold, background: palette.base.backgroundDarker },
    { face: "markdown-inline-code-face", foreground: palette.ochre.warmBold },
    { face: "markdown-link-face", foreground: palette.teal.typeSageBold, underline: true },
    { face: "markdown-url-face", foreground: palette.teal.operatorSage, underline: true },
    { face: "markdown-bold-face", weight: "bold" },
    { face: "markdown-italic-face", slant: "italic" },
    
    // Company mode (completion)
    { face: "company-tooltip", foreground: palette.base.foreground, background: palette.base.backgroundLighter },
    { face: "company-tooltip-selection", background: palette.ui.selectionBackground },
    { face: "company-tooltip-common", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "company-tooltip-annotation", foreground: palette.gray.commentMuted },
    { face: "company-scrollbar-bg", background: palette.base.backgroundDarker },
    { face: "company-scrollbar-fg", background: palette.gray.commentMuted },
    
    // Flycheck/Flymake (error checking)
    { face: "flycheck-error", underline: palette.red.errorClay },
    { face: "flycheck-warning", underline: palette.ochre.warningAmber },
    { face: "flycheck-info", underline: palette.teal.typeSageBold },
    { face: "flymake-error", underline: palette.red.errorClay },
    { face: "flymake-warning", underline: palette.ochre.warningAmber },
    { face: "flymake-note", underline: palette.teal.typeSageBold },
    
    // Git gutter
    { face: "git-gutter:added", foreground: palette.green.statusGood },
    { face: "git-gutter:deleted", foreground: palette.red.errorClay },
    { face: "git-gutter:modified", foreground: palette.ochre.warningAmber },
    
    // Magit
    { face: "magit-branch-local", foreground: palette.green.functionMoss, weight: "bold" },
    { face: "magit-branch-remote", foreground: palette.teal.typeSageBold, weight: "bold" },
    { face: "magit-tag", foreground: palette.ochre.warmBold, weight: "bold" },
    { face: "magit-section-heading", foreground: palette.green.keywordBold, weight: "bold" },
    { face: "magit-section-highlight", background: palette.base.backgroundLighter },
    { face: "magit-diff-added", foreground: palette.green.statusGood, background: palette.base.backgroundDarker },
    { face: "magit-diff-added-highlight", foreground: palette.green.statusGood, background: palette.base.backgroundLighter },
    { face: "magit-diff-removed", foreground: palette.red.errorClay, background: palette.base.backgroundDarker },
    { face: "magit-diff-removed-highlight", foreground: palette.red.errorClay, background: palette.base.backgroundLighter },
    { face: "magit-diff-context", foreground: palette.gray.commentMuted },
    { face: "magit-diff-context-highlight", foreground: palette.base.foreground, background: palette.base.backgroundLighter },
    { face: "magit-diff-hunk-heading", foreground: palette.base.foreground, background: palette.base.backgroundDarker },
    { face: "magit-diff-hunk-heading-highlight", foreground: palette.base.foreground, background: palette.base.backgroundLighter },
    { face: "magit-hash", foreground: palette.ochre.constantMuted },
    
    // Whitespace mode
    { face: "whitespace-space", foreground: palette.gray.veryMuted },
    { face: "whitespace-tab", foreground: palette.gray.veryMuted },
    { face: "whitespace-newline", foreground: palette.gray.veryMuted },
    { face: "whitespace-trailing", background: palette.red.errorBackground },
    { face: "whitespace-line", background: palette.red.errorBackground },
    
    // Success/Error/Warning generic faces
    { face: "success", foreground: palette.green.statusGood, weight: "bold" },
    { face: "warning", foreground: palette.ochre.warningAmber, weight: "bold" },
    { face: "error", foreground: palette.red.errorClay, weight: "bold" },
    
    // Button
    { face: "button", foreground: palette.teal.typeSageBold, underline: true },
    
    // Header line
    { face: "header-line", foreground: palette.base.foreground, background: palette.base.backgroundDarker },
    
    // Vertical border
    { face: "vertical-border", foreground: palette.ui.border },
    
    // Window divider
    { face: "window-divider", foreground: palette.ui.border },
    { face: "window-divider-first-pixel", foreground: palette.ui.border },
    { face: "window-divider-last-pixel", foreground: palette.ui.border },
  ];

  // Generate the Emacs Lisp theme file
  let content = `;;; ${themeName}-theme.el --- ${themeDisplayName} theme for Emacs 30 -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026 Human Theme Authors

;; Author: Human Theme Authors
;; URL: https://github.com/N3M0-dev/human-theme
;; Version: 1.1.1
;; Package-Requires: ((emacs "30.0"))
;; Keywords: faces, theme, accessibility

;; This file is not part of GNU Emacs.

;;; Commentary:

;; ${themeDisplayName} - Research-grade Emacs theme based on vision science
;; and human perception. Designed with ecological color theory and
;; scientifically validated for accessibility, eye comfort, and
;; colorblind safety.
;;
;; Features:
;; - WCAG 2.1 Compliant (AA/AAA standards)
;; - Colorblind Validated (LMS cone simulation testing)
;; - Perceptual Uniformity (CIELAB color space)
;; - Eye Comfort Optimized (Green-dominant palette, 555nm peak)
;;
;; Background: ${palette.base.background}
;; Foreground: ${palette.base.foreground}
;; Type: ${palette.type}
;;
;; Installation:
;; 1. Place this file in ~/.emacs.d/themes/ or in your load-path
;; 2. Add (load-theme '${themeName} t) to your init.el

;;; Code:

(deftheme ${themeName}
  "${themeDisplayName} - Research-grade theme based on vision science.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg "${palette.base.background}")
      (fg "${palette.base.foreground}")
      (bg-darker "${palette.base.backgroundDarker}")
      (bg-lighter "${palette.base.backgroundLighter}")
      (fg-muted "${palette.base.foregroundMuted}")
      (fg-very-muted "${palette.base.foregroundVeryMuted}")
      (shadow "${palette.base.shadowColor}")
      
      ;; Green palette (keywords, functions)
      (green-keyword "${palette.green.keywordBold}")
      (green-function "${palette.green.functionMoss}")
      (green-leaf "${palette.green.leafLight}")
      (green-success "${palette.green.successLight}")
      (green-status "${palette.green.statusGood}")
      
      ;; Teal palette (types, structure)
      (teal-type "${palette.teal.typeSageBold}")
      (teal-operator "${palette.teal.operatorSage}")
      (teal-namespace "${palette.teal.namespace}")
      (teal-structure "${palette.teal.structureCalm}")
      
      ;; Ochre palette (literals, constants)
      (ochre-warm "${palette.ochre.warmBold}")
      (ochre-constant "${palette.ochre.constantMuted}")
      (ochre-warning "${palette.ochre.warningAmber}")
      (ochre-rust "${palette.ochre.autumnRust}")
      
      ;; Red palette (errors, alerts)
      (red-error "${palette.red.errorClay}")
      (red-light "${palette.red.errorLight}")
      (red-rust "${palette.red.rust}")
      (red-bg "${palette.red.errorBackground}")
      
      ;; Brown palette (HTML, markup)
      (brown-html "${palette.brown.htmlEarthy}")
      (brown-attr "${palette.brown.attributeMuted}")
      (brown-tag "${palette.brown.tagPunctuation}")
      
      ;; Gray palette (comments, UI)
      (gray-comment "${palette.gray.commentMuted}")
      (gray-line-num "${palette.gray.lineNumberMuted}")
      (gray-line-active "${palette.gray.lineNumberActive}")
      (gray-tan "${palette.gray.tan}")
      (gray-tan-muted "${palette.gray.tanMuted}")
      (gray-very-muted "${palette.gray.veryMuted}")
      
      ;; UI colors
      (ui-selection "${palette.ui.selectionBackground}")
      (ui-selection-inactive "${palette.ui.selectionInactive}")
      (ui-selection-highlight "${palette.ui.selectionHighlight}")
      (ui-word-highlight "${palette.ui.wordHighlight}")
      (ui-word-highlight-strong "${palette.ui.wordHighlightStrong}")
      (ui-find-match "${palette.ui.findMatch}")
      (ui-find-match-highlight "${palette.ui.findMatchHighlight}")
      (ui-hover "${palette.ui.hoverBackground}")
      (ui-focus "${palette.ui.focusOutline}")
      (ui-border "${palette.ui.border}")
      
      ;; Diagnostics
      (diag-error "${palette.diagnostic.error}")
      (diag-warning "${palette.diagnostic.warning}")
      (diag-info "${palette.diagnostic.info}")
      (diag-hint "${palette.diagnostic.hint}"))

  (custom-theme-set-faces
   '${themeName}
`;

  // Generate face specifications
  faces.forEach(face => {
    content += `   '(${face.face} ((,class (:foreground `;
    
    if (face.foreground) {
      content += `"${face.foreground}"`;
    } else {
      content += `nil`;
    }
    
    if (face.background) {
      content += ` :background "${face.background}"`;
    }
    
    if (face.weight) {
      content += ` :weight ${face.weight}`;
    }
    
    if (face.slant) {
      content += ` :slant ${face.slant}`;
    }
    
    if (face.underline !== undefined) {
      if (typeof face.underline === 'string') {
        content += ` :underline (:color "${face.underline}" :style line)`;
      } else if (face.underline === true) {
        content += ` :underline t`;
      }
    }
    
    if (face.box) {
      content += ` :box (:line-width 1 :color "${face.box}")`;
    }
    
    if (face.inverse) {
      content += ` :inverse-video t`;
    }
    
    content += `))))\n`;
  });

  content += `   ))

(provide-theme '${themeName})

;;; ${themeName}-theme.el ends here
`;

  return content;
}
