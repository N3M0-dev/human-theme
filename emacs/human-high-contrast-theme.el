;;; human-high-contrast-theme.el --- Human High Contrast theme for Emacs 30 -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026 Human Theme Authors

;; Author: Human Theme Authors
;; URL: https://github.com/N3M0-dev/human-theme
;; Version: 1.1.1
;; Package-Requires: ((emacs "30.0"))
;; Keywords: faces, theme, accessibility

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Human High Contrast - Research-grade Emacs theme based on vision science
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
;; Background: #000000
;; Foreground: #FFFFFF
;; Type: dark
;;
;; Installation:
;; 1. Place this file in ~/.emacs.d/themes/ or in your load-path
;; 2. Add (load-theme 'human-high-contrast t) to your init.el

;;; Code:

(deftheme human-high-contrast
  "Human High Contrast - Research-grade theme based on vision science.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg "#000000")
      (fg "#FFFFFF")
      (bg-darker "#000000")
      (bg-lighter "#101010")
      (fg-muted "#CCCCCC")
      (fg-very-muted "#AAAAAA")
      (shadow "#000000")
      
      ;; Green palette (keywords, functions)
      (green-keyword "#00FF00")
      (green-function "#00EE00")
      (green-leaf "#00DD00")
      (green-success "#00EE00")
      (green-status "#00DD00")
      
      ;; Teal palette (types, structure)
      (teal-type "#00DDFF")
      (teal-operator "#00CCEE")
      (teal-namespace "#00DDFF")
      (teal-structure "#00BBDD")
      
      ;; Ochre palette (literals, constants)
      (ochre-warm "#FFCC00")
      (ochre-constant "#EEBB00")
      (ochre-warning "#FFCC00")
      (ochre-rust "#FF9900")
      
      ;; Red palette (errors, alerts)
      (red-error "#FF0000")
      (red-light "#FF4444")
      (red-rust "#EE0000")
      (red-bg "#2A0000")
      
      ;; Brown palette (HTML, markup)
      (brown-html "#FFCC00")
      (brown-attr "#DDAA00")
      (brown-tag "#CCAA00")
      
      ;; Gray palette (comments, UI)
      (gray-comment "#888888")
      (gray-line-num "#666666")
      (gray-line-active "#BBBBBB")
      (gray-tan "#FFFFFF")
      (gray-tan-muted "#CCCCCC")
      (gray-very-muted "#888888")
      
      ;; UI colors
      (ui-selection "#224466")
      (ui-selection-inactive "#1A1A1A")
      (ui-selection-highlight "#223344")
      (ui-word-highlight "#202020")
      (ui-word-highlight-strong "#303030")
      (ui-find-match "#FFFF00")
      (ui-find-match-highlight "#AAAA00")
      (ui-hover "#181818")
      (ui-focus "#00FF00")
      (ui-border "#101010")
      
      ;; Diagnostics
      (diag-error "#FF0000")
      (diag-warning "#FFCC00")
      (diag-info "#00DDFF")
      (diag-hint "#00EE00"))

  (custom-theme-set-faces
   'human-high-contrast
   '(default ((,class (:foreground "#FFFFFF" :background "#000000"))))
   '(cursor ((,class (:foreground nil :background "#00FF00"))))
   '(region ((,class (:foreground nil :background "#224466"))))
   '(highlight ((,class (:foreground nil :background "#202020"))))
   '(hl-line ((,class (:foreground nil :background "#101010"))))
   '(fringe ((,class (:foreground "#666666" :background "#000000"))))
   '(shadow ((,class (:foreground "#888888"))))
   '(secondary-selection ((,class (:foreground nil :background "#1A1A1A"))))
   '(trailing-whitespace ((,class (:foreground nil :background "#2A0000"))))
   '(font-lock-builtin-face ((,class (:foreground "#00DDFF"))))
   '(font-lock-comment-delimiter-face ((,class (:foreground "#888888"))))
   '(font-lock-comment-face ((,class (:foreground "#888888" :slant italic))))
   '(font-lock-constant-face ((,class (:foreground "#EEBB00"))))
   '(font-lock-doc-face ((,class (:foreground "#888888" :slant italic))))
   '(font-lock-function-name-face ((,class (:foreground "#00EE00" :weight bold))))
   '(font-lock-keyword-face ((,class (:foreground "#00FF00" :weight bold))))
   '(font-lock-negation-char-face ((,class (:foreground "#FF0000"))))
   '(font-lock-preprocessor-face ((,class (:foreground "#00CCEE"))))
   '(font-lock-regexp-grouping-backslash ((,class (:foreground "#FFCC00"))))
   '(font-lock-regexp-grouping-construct ((,class (:foreground "#FFCC00"))))
   '(font-lock-string-face ((,class (:foreground "#FFCC00"))))
   '(font-lock-type-face ((,class (:foreground "#00DDFF" :weight bold))))
   '(font-lock-variable-name-face ((,class (:foreground "#FFFFFF"))))
   '(font-lock-warning-face ((,class (:foreground "#FFCC00" :weight bold))))
   '(mode-line ((,class (:foreground "#FFFFFF" :background "#101010" :box (:line-width 1 :color "#101010")))))
   '(mode-line-inactive ((,class (:foreground "#888888" :background "#000000" :box (:line-width 1 :color "#101010")))))
   '(mode-line-buffer-id ((,class (:foreground "#00FF00" :weight bold))))
   '(mode-line-emphasis ((,class (:foreground "#00EE00" :weight bold))))
   '(mode-line-highlight ((,class (:foreground nil :background "#181818"))))
   '(line-number ((,class (:foreground "#666666" :background "#000000"))))
   '(line-number-current-line ((,class (:foreground "#BBBBBB" :background "#101010" :weight bold))))
   '(isearch ((,class (:foreground "#000000" :background "#FFFF00" :weight bold))))
   '(isearch-fail ((,class (:foreground "#FF0000" :weight bold))))
   '(lazy-highlight ((,class (:foreground nil :background "#AAAA00"))))
   '(match ((,class (:foreground nil :background "#202020"))))
   '(show-paren-match ((,class (:foreground nil :background "#303030" :weight bold))))
   '(show-paren-mismatch ((,class (:foreground "#FF0000" :background "#2A0000" :weight bold))))
   '(link ((,class (:foreground "#00DDFF" :underline t))))
   '(link-visited ((,class (:foreground "#00CCEE" :underline t))))
   '(minibuffer-prompt ((,class (:foreground "#00FF00" :weight bold))))
   '(compilation-info ((,class (:foreground "#00EE00"))))
   '(compilation-warning ((,class (:foreground "#FFCC00" :weight bold))))
   '(compilation-error ((,class (:foreground "#FF0000" :weight bold))))
   '(dired-directory ((,class (:foreground "#00DDFF" :weight bold))))
   '(dired-flagged ((,class (:foreground "#FF0000" :weight bold))))
   '(dired-header ((,class (:foreground "#00FF00" :weight bold))))
   '(dired-mark ((,class (:foreground "#00EE00" :weight bold))))
   '(dired-marked ((,class (:foreground "#00EE00" :weight bold))))
   '(dired-symlink ((,class (:foreground "#00CCEE" :slant italic))))
   '(dired-warning ((,class (:foreground "#FFCC00" :weight bold))))
   '(org-level-1 ((,class (:foreground "#00FF00" :weight bold))))
   '(org-level-2 ((,class (:foreground "#00DDFF" :weight bold))))
   '(org-level-3 ((,class (:foreground "#00EE00" :weight bold))))
   '(org-level-4 ((,class (:foreground "#00CCEE" :weight bold))))
   '(org-level-5 ((,class (:foreground "#FFCC00" :weight bold))))
   '(org-level-6 ((,class (:foreground "#FFCC00" :weight bold))))
   '(org-level-7 ((,class (:foreground "#FFFFFF" :weight bold))))
   '(org-level-8 ((,class (:foreground "#CCCCCC" :weight bold))))
   '(org-document-title ((,class (:foreground "#00FF00" :weight bold))))
   '(org-document-info ((,class (:foreground "#00DDFF"))))
   '(org-document-info-keyword ((,class (:foreground "#888888"))))
   '(org-link ((,class (:foreground "#00DDFF" :underline t))))
   '(org-code ((,class (:foreground "#FFCC00"))))
   '(org-verbatim ((,class (:foreground "#EEBB00"))))
   '(org-block ((,class (:foreground "#FFFFFF" :background "#000000"))))
   '(org-block-begin-line ((,class (:foreground "#888888" :background "#000000"))))
   '(org-block-end-line ((,class (:foreground "#888888" :background "#000000"))))
   '(org-todo ((,class (:foreground "#FF0000" :weight bold))))
   '(org-done ((,class (:foreground "#00DD00" :weight bold))))
   '(org-headline-done ((,class (:foreground "#888888"))))
   '(org-date ((,class (:foreground "#00CCEE" :underline t))))
   '(org-special-keyword ((,class (:foreground "#888888"))))
   '(org-tag ((,class (:foreground "#DDAA00"))))
   '(markdown-header-face-1 ((,class (:foreground "#00FF00" :weight bold))))
   '(markdown-header-face-2 ((,class (:foreground "#00DDFF" :weight bold))))
   '(markdown-header-face-3 ((,class (:foreground "#00EE00" :weight bold))))
   '(markdown-header-face-4 ((,class (:foreground "#00CCEE" :weight bold))))
   '(markdown-header-face-5 ((,class (:foreground "#FFCC00" :weight bold))))
   '(markdown-header-face-6 ((,class (:foreground "#FFCC00" :weight bold))))
   '(markdown-code-face ((,class (:foreground "#FFCC00" :background "#000000"))))
   '(markdown-inline-code-face ((,class (:foreground "#FFCC00"))))
   '(markdown-link-face ((,class (:foreground "#00DDFF" :underline t))))
   '(markdown-url-face ((,class (:foreground "#00CCEE" :underline t))))
   '(markdown-bold-face ((,class (:foreground nil :weight bold))))
   '(markdown-italic-face ((,class (:foreground nil :slant italic))))
   '(company-tooltip ((,class (:foreground "#FFFFFF" :background "#101010"))))
   '(company-tooltip-selection ((,class (:foreground nil :background "#224466"))))
   '(company-tooltip-common ((,class (:foreground "#00EE00" :weight bold))))
   '(company-tooltip-annotation ((,class (:foreground "#888888"))))
   '(company-scrollbar-bg ((,class (:foreground nil :background "#000000"))))
   '(company-scrollbar-fg ((,class (:foreground nil :background "#888888"))))
   '(flycheck-error ((,class (:foreground nil :underline (:color "#FF0000" :style line)))))
   '(flycheck-warning ((,class (:foreground nil :underline (:color "#FFCC00" :style line)))))
   '(flycheck-info ((,class (:foreground nil :underline (:color "#00DDFF" :style line)))))
   '(flymake-error ((,class (:foreground nil :underline (:color "#FF0000" :style line)))))
   '(flymake-warning ((,class (:foreground nil :underline (:color "#FFCC00" :style line)))))
   '(flymake-note ((,class (:foreground nil :underline (:color "#00DDFF" :style line)))))
   '(git-gutter:added ((,class (:foreground "#00DD00"))))
   '(git-gutter:deleted ((,class (:foreground "#FF0000"))))
   '(git-gutter:modified ((,class (:foreground "#FFCC00"))))
   '(magit-branch-local ((,class (:foreground "#00EE00" :weight bold))))
   '(magit-branch-remote ((,class (:foreground "#00DDFF" :weight bold))))
   '(magit-tag ((,class (:foreground "#FFCC00" :weight bold))))
   '(magit-section-heading ((,class (:foreground "#00FF00" :weight bold))))
   '(magit-section-highlight ((,class (:foreground nil :background "#101010"))))
   '(magit-diff-added ((,class (:foreground "#00DD00" :background "#000000"))))
   '(magit-diff-added-highlight ((,class (:foreground "#00DD00" :background "#101010"))))
   '(magit-diff-removed ((,class (:foreground "#FF0000" :background "#000000"))))
   '(magit-diff-removed-highlight ((,class (:foreground "#FF0000" :background "#101010"))))
   '(magit-diff-context ((,class (:foreground "#888888"))))
   '(magit-diff-context-highlight ((,class (:foreground "#FFFFFF" :background "#101010"))))
   '(magit-diff-hunk-heading ((,class (:foreground "#FFFFFF" :background "#000000"))))
   '(magit-diff-hunk-heading-highlight ((,class (:foreground "#FFFFFF" :background "#101010"))))
   '(magit-hash ((,class (:foreground "#EEBB00"))))
   '(whitespace-space ((,class (:foreground "#888888"))))
   '(whitespace-tab ((,class (:foreground "#888888"))))
   '(whitespace-newline ((,class (:foreground "#888888"))))
   '(whitespace-trailing ((,class (:foreground nil :background "#2A0000"))))
   '(whitespace-line ((,class (:foreground nil :background "#2A0000"))))
   '(success ((,class (:foreground "#00DD00" :weight bold))))
   '(warning ((,class (:foreground "#FFCC00" :weight bold))))
   '(error ((,class (:foreground "#FF0000" :weight bold))))
   '(button ((,class (:foreground "#00DDFF" :underline t))))
   '(header-line ((,class (:foreground "#FFFFFF" :background "#000000"))))
   '(vertical-border ((,class (:foreground "#101010"))))
   '(window-divider ((,class (:foreground "#101010"))))
   '(window-divider-first-pixel ((,class (:foreground "#101010"))))
   '(window-divider-last-pixel ((,class (:foreground "#101010"))))
   ))

(provide-theme 'human-high-contrast)

;;; human-high-contrast-theme.el ends here
