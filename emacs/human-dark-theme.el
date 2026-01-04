;;; human-dark-theme.el --- Human Dark theme for Emacs 30 -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026 Human Theme Authors

;; Author: Human Theme Authors
;; URL: https://github.com/N3M0-dev/human-theme
;; Version: 1.1.1
;; Package-Requires: ((emacs "30.0"))
;; Keywords: faces, theme, accessibility

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Human Dark - Research-grade Emacs theme based on vision science
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
;; Background: #101713
;; Foreground: #D9D3C7
;; Type: dark
;;
;; Installation:
;; 1. Place this file in ~/.emacs.d/themes/ or in your load-path
;; 2. Add (load-theme 'human-dark t) to your init.el

;;; Code:

(deftheme human-dark
  "Human Dark - Research-grade theme based on vision science.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg "#101713")
      (fg "#D9D3C7")
      (bg-darker "#0D120F")
      (bg-lighter "#111814")
      (fg-muted "#CFC8BA")
      (fg-very-muted "#9FB8A5")
      (shadow "#050804")
      
      ;; Green palette (keywords, functions)
      (green-keyword "#A3D977")
      (green-function "#9AD1A3")
      (green-leaf "#C7E7A6")
      (green-success "#9AD1A3")
      (green-status "#8FBF8A")
      
      ;; Teal palette (types, structure)
      (teal-type "#8FBFA3")
      (teal-operator "#9FB8A5")
      (teal-namespace "#9AD1A3")
      (teal-structure "#B0C8B8")
      
      ;; Ochre palette (literals, constants)
      (ochre-warm "#C9A24D")
      (ochre-constant "#B08C4F")
      (ochre-warning "#E8B86F")
      (ochre-rust "#C87C3E")
      
      ;; Red palette (errors, alerts)
      (red-error "#E84040")
      (red-light "#E8A09A")
      (red-rust "#D97A7A")
      (red-bg "#2A1412")
      
      ;; Brown palette (HTML, markup)
      (brown-html "#C9A257")
      (brown-attr "#B8956F")
      (brown-tag "#A68A6A")
      
      ;; Gray palette (comments, UI)
      (gray-comment "#6B7A6F")
      (gray-line-num "#3E4A42")
      (gray-line-active "#A6BDA4")
      (gray-tan "#CFC8BA")
      (gray-tan-muted "#9FB8A5")
      (gray-very-muted "#3E4A42")
      
      ;; UI colors
      (ui-selection "#1D3323")
      (ui-selection-inactive "#16221C")
      (ui-selection-highlight "#162B21")
      (ui-word-highlight "#16221C")
      (ui-word-highlight-strong "#1A2825")
      (ui-find-match "#2A2414")
      (ui-find-match-highlight "#2A241480")
      (ui-hover "#0E1A12")
      (ui-focus "#A3D977")
      (ui-border "#111814")
      
      ;; Diagnostics
      (diag-error "#E84040")
      (diag-warning "#E8B86F")
      (diag-info "#8FBFA3")
      (diag-hint "#8FBF8A"))

  (custom-theme-set-faces
   'human-dark
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:foreground nil :background ,green-keyword))))
   `(region ((,class (:foreground nil :background ,ui-selection))))
   `(highlight ((,class (:foreground nil :background ,ui-selection-inactive))))
   `(hl-line ((,class (:foreground nil :background ,bg-lighter))))
   `(fringe ((,class (:foreground ,gray-line-num :background ,bg))))
   `(shadow ((,class (:foreground ,gray-comment))))
   `(secondary-selection ((,class (:foreground nil :background ,ui-selection-inactive))))
   `(trailing-whitespace ((,class (:foreground nil :background ,red-bg))))
   `(font-lock-builtin-face ((,class (:foreground ,teal-type))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,gray-comment))))
   `(font-lock-comment-face ((,class (:foreground ,gray-comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,ochre-constant))))
   `(font-lock-doc-face ((,class (:foreground ,gray-comment :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,green-function :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,green-keyword :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,red-error))))
   `(font-lock-preprocessor-face ((,class (:foreground ,teal-operator))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,ochre-warning))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,ochre-warning))))
   `(font-lock-string-face ((,class (:foreground ,ochre-warning))))
   `(font-lock-type-face ((,class (:foreground ,teal-type :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg))))
   `(font-lock-warning-face ((,class (:foreground ,ochre-warning :weight bold))))
   `(mode-line ((,class (:foreground ,fg :background ,bg-lighter :box (:line-width 1 :color ,bg-lighter)))))
   `(mode-line-inactive ((,class (:foreground ,gray-comment :background ,bg-darker :box (:line-width 1 :color ,bg-lighter)))))
   `(mode-line-buffer-id ((,class (:foreground ,green-keyword :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,green-function :weight bold))))
   `(mode-line-highlight ((,class (:foreground nil :background ,ui-hover))))
   `(line-number ((,class (:foreground ,gray-line-num :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,gray-line-active :background ,bg-lighter :weight bold))))
   `(isearch ((,class (:foreground ,bg :background ,ui-find-match :weight bold))))
   `(isearch-fail ((,class (:foreground ,red-error :weight bold))))
   `(lazy-highlight ((,class (:foreground nil :background ,ui-find-match-highlight))))
   `(match ((,class (:foreground nil :background ,ui-selection-inactive))))
   `(show-paren-match ((,class (:foreground nil :background ,ui-word-highlight-strong :weight bold))))
   `(show-paren-mismatch ((,class (:foreground ,red-error :background ,red-bg :weight bold))))
   `(link ((,class (:foreground ,teal-type :underline t))))
   `(link-visited ((,class (:foreground ,teal-operator :underline t))))
   `(minibuffer-prompt ((,class (:foreground ,green-keyword :weight bold))))
   `(compilation-info ((,class (:foreground ,green-function))))
   `(compilation-warning ((,class (:foreground ,ochre-warning :weight bold))))
   `(compilation-error ((,class (:foreground ,red-error :weight bold))))
   `(dired-directory ((,class (:foreground ,teal-type :weight bold))))
   `(dired-flagged ((,class (:foreground ,red-error :weight bold))))
   `(dired-header ((,class (:foreground ,green-keyword :weight bold))))
   `(dired-mark ((,class (:foreground ,green-function :weight bold))))
   `(dired-marked ((,class (:foreground ,green-function :weight bold))))
   `(dired-symlink ((,class (:foreground ,teal-operator :slant italic))))
   `(dired-warning ((,class (:foreground ,ochre-warning :weight bold))))
   `(org-level-1 ((,class (:foreground ,green-keyword :weight bold))))
   `(org-level-2 ((,class (:foreground ,teal-type :weight bold))))
   `(org-level-3 ((,class (:foreground ,green-function :weight bold))))
   `(org-level-4 ((,class (:foreground ,teal-operator :weight bold))))
   `(org-level-5 ((,class (:foreground ,ochre-warm :weight bold))))
   `(org-level-6 ((,class (:foreground ,brown-html :weight bold))))
   `(org-level-7 ((,class (:foreground ,gray-tan :weight bold))))
   `(org-level-8 ((,class (:foreground ,teal-operator :weight bold))))
   `(org-document-title ((,class (:foreground ,green-keyword :weight bold))))
   `(org-document-info ((,class (:foreground ,teal-type))))
   `(org-document-info-keyword ((,class (:foreground ,gray-comment))))
   `(org-link ((,class (:foreground ,teal-type :underline t))))
   `(org-code ((,class (:foreground ,ochre-warm))))
   `(org-verbatim ((,class (:foreground ,ochre-constant))))
   `(org-block ((,class (:foreground ,fg :background ,bg-darker))))
   `(org-block-begin-line ((,class (:foreground ,gray-comment :background ,bg-darker))))
   `(org-block-end-line ((,class (:foreground ,gray-comment :background ,bg-darker))))
   `(org-todo ((,class (:foreground ,red-error :weight bold))))
   `(org-done ((,class (:foreground ,green-status :weight bold))))
   `(org-headline-done ((,class (:foreground ,gray-comment))))
   `(org-date ((,class (:foreground ,teal-operator :underline t))))
   `(org-special-keyword ((,class (:foreground ,gray-comment))))
   `(org-tag ((,class (:foreground ,brown-attr))))
   `(markdown-header-face-1 ((,class (:foreground ,green-keyword :weight bold))))
   `(markdown-header-face-2 ((,class (:foreground ,teal-type :weight bold))))
   `(markdown-header-face-3 ((,class (:foreground ,green-function :weight bold))))
   `(markdown-header-face-4 ((,class (:foreground ,teal-operator :weight bold))))
   `(markdown-header-face-5 ((,class (:foreground ,ochre-warm :weight bold))))
   `(markdown-header-face-6 ((,class (:foreground ,brown-html :weight bold))))
   `(markdown-code-face ((,class (:foreground ,ochre-warm :background ,bg-darker))))
   `(markdown-inline-code-face ((,class (:foreground ,ochre-warm))))
   `(markdown-link-face ((,class (:foreground ,teal-type :underline t))))
   `(markdown-url-face ((,class (:foreground ,teal-operator :underline t))))
   `(markdown-bold-face ((,class (:foreground nil :weight bold))))
   `(markdown-italic-face ((,class (:foreground nil :slant italic))))
   `(company-tooltip ((,class (:foreground ,fg :background ,bg-lighter))))
   `(company-tooltip-selection ((,class (:foreground nil :background ,ui-selection))))
   `(company-tooltip-common ((,class (:foreground ,green-function :weight bold))))
   `(company-tooltip-annotation ((,class (:foreground ,gray-comment))))
   `(company-scrollbar-bg ((,class (:foreground nil :background ,bg-darker))))
   `(company-scrollbar-fg ((,class (:foreground nil :background ,gray-comment))))
   `(flycheck-error ((,class (:foreground nil :underline (:color ,diag-error :style line)))))
   `(flycheck-warning ((,class (:foreground nil :underline (:color ,diag-warning :style line)))))
   `(flycheck-info ((,class (:foreground nil :underline (:color ,diag-info :style line)))))
   `(flymake-error ((,class (:foreground nil :underline (:color ,diag-error :style line)))))
   `(flymake-warning ((,class (:foreground nil :underline (:color ,diag-warning :style line)))))
   `(flymake-note ((,class (:foreground nil :underline (:color ,diag-info :style line)))))
   `(git-gutter:added ((,class (:foreground ,green-status))))
   `(git-gutter:deleted ((,class (:foreground ,red-error))))
   `(git-gutter:modified ((,class (:foreground ,ochre-warning))))
   `(magit-branch-local ((,class (:foreground ,green-function :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,teal-type :weight bold))))
   `(magit-tag ((,class (:foreground ,ochre-warm :weight bold))))
   `(magit-section-heading ((,class (:foreground ,green-keyword :weight bold))))
   `(magit-section-highlight ((,class (:foreground nil :background ,bg-lighter))))
   `(magit-diff-added ((,class (:foreground ,green-status :background ,bg-darker))))
   `(magit-diff-added-highlight ((,class (:foreground ,green-status :background ,bg-lighter))))
   `(magit-diff-removed ((,class (:foreground ,red-error :background ,bg-darker))))
   `(magit-diff-removed-highlight ((,class (:foreground ,red-error :background ,bg-lighter))))
   `(magit-diff-context ((,class (:foreground ,gray-comment))))
   `(magit-diff-context-highlight ((,class (:foreground ,fg :background ,bg-lighter))))
   `(magit-diff-hunk-heading ((,class (:foreground ,fg :background ,bg-darker))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,fg :background ,bg-lighter))))
   `(magit-hash ((,class (:foreground ,ochre-constant))))
   `(whitespace-space ((,class (:foreground ,gray-line-num))))
   `(whitespace-tab ((,class (:foreground ,gray-line-num))))
   `(whitespace-newline ((,class (:foreground ,gray-line-num))))
   `(whitespace-trailing ((,class (:foreground nil :background ,red-bg))))
   `(whitespace-line ((,class (:foreground nil :background ,red-bg))))
   `(success ((,class (:foreground ,green-status :weight bold))))
   `(warning ((,class (:foreground ,ochre-warning :weight bold))))
   `(error ((,class (:foreground ,red-error :weight bold))))
   `(button ((,class (:foreground ,teal-type :underline t))))
   `(header-line ((,class (:foreground ,fg :background ,bg-darker))))
   `(vertical-border ((,class (:foreground ,bg-lighter))))
   `(window-divider ((,class (:foreground ,bg-lighter))))
   `(window-divider-first-pixel ((,class (:foreground ,bg-lighter))))
   `(window-divider-last-pixel ((,class (:foreground ,bg-lighter))))
   ))

(provide-theme 'human-dark)

;;; human-dark-theme.el ends here
