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
   `(default ((,class (:foreground ,gray-tan :background ,shadow))))
   `(cursor ((,class (:foreground nil :background ,ui-focus))))
   `(region ((,class (:foreground nil :background ,ui-selection))))
   `(highlight ((,class (:foreground nil :background ,ui-word-highlight))))
   `(hl-line ((,class (:foreground nil :background ,ui-border))))
   `(fringe ((,class (:foreground ,gray-line-num :background ,shadow))))
   `(shadow ((,class (:foreground ,gray-very-muted))))
   `(secondary-selection ((,class (:foreground nil :background ,ui-selection-inactive))))
   `(trailing-whitespace ((,class (:foreground nil :background ,red-bg))))
   `(font-lock-builtin-face ((,class (:foreground ,diag-info))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,gray-very-muted))))
   `(font-lock-comment-face ((,class (:foreground ,gray-very-muted :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,ochre-constant))))
   `(font-lock-doc-face ((,class (:foreground ,gray-very-muted :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,diag-hint :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,ui-focus :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,diag-error))))
   `(font-lock-preprocessor-face ((,class (:foreground ,teal-operator))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,diag-warning))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,diag-warning))))
   `(font-lock-string-face ((,class (:foreground ,diag-warning))))
   `(font-lock-type-face ((,class (:foreground ,diag-info :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,gray-tan))))
   `(font-lock-warning-face ((,class (:foreground ,diag-warning :weight bold))))
   `(mode-line ((,class (:foreground ,gray-tan :background ,ui-border :box (:line-width 1 :color ,ui-border)))))
   `(mode-line-inactive ((,class (:foreground ,gray-very-muted :background ,shadow :box (:line-width 1 :color ,ui-border)))))
   `(mode-line-buffer-id ((,class (:foreground ,ui-focus :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,diag-hint :weight bold))))
   `(mode-line-highlight ((,class (:foreground nil :background ,ui-hover))))
   `(line-number ((,class (:foreground ,gray-line-num :background ,shadow))))
   `(line-number-current-line ((,class (:foreground ,gray-line-active :background ,ui-border :weight bold))))
   `(isearch ((,class (:foreground ,shadow :background ,ui-find-match :weight bold))))
   `(isearch-fail ((,class (:foreground ,diag-error :weight bold))))
   `(lazy-highlight ((,class (:foreground nil :background ,ui-find-match-highlight))))
   `(match ((,class (:foreground nil :background ,ui-word-highlight))))
   `(show-paren-match ((,class (:foreground nil :background ,ui-word-highlight-strong :weight bold))))
   `(show-paren-mismatch ((,class (:foreground ,diag-error :background ,red-bg :weight bold))))
   `(link ((,class (:foreground ,diag-info :underline t))))
   `(link-visited ((,class (:foreground ,teal-operator :underline t))))
   `(minibuffer-prompt ((,class (:foreground ,ui-focus :weight bold))))
   `(compilation-info ((,class (:foreground ,diag-hint))))
   `(compilation-warning ((,class (:foreground ,diag-warning :weight bold))))
   `(compilation-error ((,class (:foreground ,diag-error :weight bold))))
   `(dired-directory ((,class (:foreground ,diag-info :weight bold))))
   `(dired-flagged ((,class (:foreground ,diag-error :weight bold))))
   `(dired-header ((,class (:foreground ,ui-focus :weight bold))))
   `(dired-mark ((,class (:foreground ,diag-hint :weight bold))))
   `(dired-marked ((,class (:foreground ,diag-hint :weight bold))))
   `(dired-symlink ((,class (:foreground ,teal-operator :slant italic))))
   `(dired-warning ((,class (:foreground ,diag-warning :weight bold))))
   `(org-level-1 ((,class (:foreground ,ui-focus :weight bold))))
   `(org-level-2 ((,class (:foreground ,diag-info :weight bold))))
   `(org-level-3 ((,class (:foreground ,diag-hint :weight bold))))
   `(org-level-4 ((,class (:foreground ,teal-operator :weight bold))))
   `(org-level-5 ((,class (:foreground ,diag-warning :weight bold))))
   `(org-level-6 ((,class (:foreground ,diag-warning :weight bold))))
   `(org-level-7 ((,class (:foreground ,gray-tan :weight bold))))
   `(org-level-8 ((,class (:foreground ,gray-tan-muted :weight bold))))
   `(org-document-title ((,class (:foreground ,ui-focus :weight bold))))
   `(org-document-info ((,class (:foreground ,diag-info))))
   `(org-document-info-keyword ((,class (:foreground ,gray-very-muted))))
   `(org-link ((,class (:foreground ,diag-info :underline t))))
   `(org-code ((,class (:foreground ,diag-warning))))
   `(org-verbatim ((,class (:foreground ,ochre-constant))))
   `(org-block ((,class (:foreground ,gray-tan :background ,shadow))))
   `(org-block-begin-line ((,class (:foreground ,gray-very-muted :background ,shadow))))
   `(org-block-end-line ((,class (:foreground ,gray-very-muted :background ,shadow))))
   `(org-todo ((,class (:foreground ,diag-error :weight bold))))
   `(org-done ((,class (:foreground ,green-status :weight bold))))
   `(org-headline-done ((,class (:foreground ,gray-very-muted))))
   `(org-date ((,class (:foreground ,teal-operator :underline t))))
   `(org-special-keyword ((,class (:foreground ,gray-very-muted))))
   `(org-tag ((,class (:foreground ,brown-attr))))
   `(markdown-header-face-1 ((,class (:foreground ,ui-focus :weight bold))))
   `(markdown-header-face-2 ((,class (:foreground ,diag-info :weight bold))))
   `(markdown-header-face-3 ((,class (:foreground ,diag-hint :weight bold))))
   `(markdown-header-face-4 ((,class (:foreground ,teal-operator :weight bold))))
   `(markdown-header-face-5 ((,class (:foreground ,diag-warning :weight bold))))
   `(markdown-header-face-6 ((,class (:foreground ,diag-warning :weight bold))))
   `(markdown-code-face ((,class (:foreground ,diag-warning :background ,shadow))))
   `(markdown-inline-code-face ((,class (:foreground ,diag-warning))))
   `(markdown-link-face ((,class (:foreground ,diag-info :underline t))))
   `(markdown-url-face ((,class (:foreground ,teal-operator :underline t))))
   `(markdown-bold-face ((,class (:foreground nil :weight bold))))
   `(markdown-italic-face ((,class (:foreground nil :slant italic))))
   `(company-tooltip ((,class (:foreground ,gray-tan :background ,ui-border))))
   `(company-tooltip-selection ((,class (:foreground nil :background ,ui-selection))))
   `(company-tooltip-common ((,class (:foreground ,diag-hint :weight bold))))
   `(company-tooltip-annotation ((,class (:foreground ,gray-very-muted))))
   `(company-scrollbar-bg ((,class (:foreground nil :background ,shadow))))
   `(company-scrollbar-fg ((,class (:foreground nil :background ,gray-very-muted))))
   `(flycheck-error ((,class (:foreground nil :underline (:color ,diag-error :style line)))))
   `(flycheck-warning ((,class (:foreground nil :underline (:color ,diag-warning :style line)))))
   `(flycheck-info ((,class (:foreground nil :underline (:color ,diag-info :style line)))))
   `(flymake-error ((,class (:foreground nil :underline (:color ,diag-error :style line)))))
   `(flymake-warning ((,class (:foreground nil :underline (:color ,diag-warning :style line)))))
   `(flymake-note ((,class (:foreground nil :underline (:color ,diag-info :style line)))))
   `(git-gutter:added ((,class (:foreground ,green-status))))
   `(git-gutter:deleted ((,class (:foreground ,diag-error))))
   `(git-gutter:modified ((,class (:foreground ,diag-warning))))
   `(magit-branch-local ((,class (:foreground ,diag-hint :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,diag-info :weight bold))))
   `(magit-tag ((,class (:foreground ,diag-warning :weight bold))))
   `(magit-section-heading ((,class (:foreground ,ui-focus :weight bold))))
   `(magit-section-highlight ((,class (:foreground nil :background ,ui-border))))
   `(magit-diff-added ((,class (:foreground ,green-status :background ,shadow))))
   `(magit-diff-added-highlight ((,class (:foreground ,green-status :background ,ui-border))))
   `(magit-diff-removed ((,class (:foreground ,diag-error :background ,shadow))))
   `(magit-diff-removed-highlight ((,class (:foreground ,diag-error :background ,ui-border))))
   `(magit-diff-context ((,class (:foreground ,gray-very-muted))))
   `(magit-diff-context-highlight ((,class (:foreground ,gray-tan :background ,ui-border))))
   `(magit-diff-hunk-heading ((,class (:foreground ,gray-tan :background ,shadow))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,gray-tan :background ,ui-border))))
   `(magit-hash ((,class (:foreground ,ochre-constant))))
   `(whitespace-space ((,class (:foreground ,gray-very-muted))))
   `(whitespace-tab ((,class (:foreground ,gray-very-muted))))
   `(whitespace-newline ((,class (:foreground ,gray-very-muted))))
   `(whitespace-trailing ((,class (:foreground nil :background ,red-bg))))
   `(whitespace-line ((,class (:foreground nil :background ,red-bg))))
   `(success ((,class (:foreground ,green-status :weight bold))))
   `(warning ((,class (:foreground ,diag-warning :weight bold))))
   `(error ((,class (:foreground ,diag-error :weight bold))))
   `(button ((,class (:foreground ,diag-info :underline t))))
   `(header-line ((,class (:foreground ,gray-tan :background ,shadow))))
   `(vertical-border ((,class (:foreground ,ui-border))))
   `(window-divider ((,class (:foreground ,ui-border))))
   `(window-divider-first-pixel ((,class (:foreground ,ui-border))))
   `(window-divider-last-pixel ((,class (:foreground ,ui-border))))
   ))

(provide-theme 'human-high-contrast)

;;; human-high-contrast-theme.el ends here
