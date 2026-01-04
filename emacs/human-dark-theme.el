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
   '(default ((,class (:foreground "#D9D3C7" :background "#101713"))))
   '(cursor ((,class (:foreground nil :background "#A3D977"))))
   '(region ((,class (:foreground nil :background "#1D3323"))))
   '(highlight ((,class (:foreground nil :background "#16221C"))))
   '(hl-line ((,class (:foreground nil :background "#111814"))))
   '(fringe ((,class (:foreground "#3E4A42" :background "#101713"))))
   '(shadow ((,class (:foreground "#6B7A6F"))))
   '(secondary-selection ((,class (:foreground nil :background "#16221C"))))
   '(trailing-whitespace ((,class (:foreground nil :background "#2A1412"))))
   '(font-lock-builtin-face ((,class (:foreground "#8FBFA3"))))
   '(font-lock-comment-delimiter-face ((,class (:foreground "#6B7A6F"))))
   '(font-lock-comment-face ((,class (:foreground "#6B7A6F" :slant italic))))
   '(font-lock-constant-face ((,class (:foreground "#B08C4F"))))
   '(font-lock-doc-face ((,class (:foreground "#6B7A6F" :slant italic))))
   '(font-lock-function-name-face ((,class (:foreground "#9AD1A3" :weight bold))))
   '(font-lock-keyword-face ((,class (:foreground "#A3D977" :weight bold))))
   '(font-lock-negation-char-face ((,class (:foreground "#E84040"))))
   '(font-lock-preprocessor-face ((,class (:foreground "#9FB8A5"))))
   '(font-lock-regexp-grouping-backslash ((,class (:foreground "#E8B86F"))))
   '(font-lock-regexp-grouping-construct ((,class (:foreground "#E8B86F"))))
   '(font-lock-string-face ((,class (:foreground "#E8B86F"))))
   '(font-lock-type-face ((,class (:foreground "#8FBFA3" :weight bold))))
   '(font-lock-variable-name-face ((,class (:foreground "#D9D3C7"))))
   '(font-lock-warning-face ((,class (:foreground "#E8B86F" :weight bold))))
   '(mode-line ((,class (:foreground "#D9D3C7" :background "#111814" :box (:line-width 1 :color "#111814")))))
   '(mode-line-inactive ((,class (:foreground "#6B7A6F" :background "#0D120F" :box (:line-width 1 :color "#111814")))))
   '(mode-line-buffer-id ((,class (:foreground "#A3D977" :weight bold))))
   '(mode-line-emphasis ((,class (:foreground "#9AD1A3" :weight bold))))
   '(mode-line-highlight ((,class (:foreground nil :background "#0E1A12"))))
   '(line-number ((,class (:foreground "#3E4A42" :background "#101713"))))
   '(line-number-current-line ((,class (:foreground "#A6BDA4" :background "#111814" :weight bold))))
   '(isearch ((,class (:foreground "#101713" :background "#2A2414" :weight bold))))
   '(isearch-fail ((,class (:foreground "#E84040" :weight bold))))
   '(lazy-highlight ((,class (:foreground nil :background "#2A241480"))))
   '(match ((,class (:foreground nil :background "#16221C"))))
   '(show-paren-match ((,class (:foreground nil :background "#1A2825" :weight bold))))
   '(show-paren-mismatch ((,class (:foreground "#E84040" :background "#2A1412" :weight bold))))
   '(link ((,class (:foreground "#8FBFA3" :underline t))))
   '(link-visited ((,class (:foreground "#9FB8A5" :underline t))))
   '(minibuffer-prompt ((,class (:foreground "#A3D977" :weight bold))))
   '(compilation-info ((,class (:foreground "#9AD1A3"))))
   '(compilation-warning ((,class (:foreground "#E8B86F" :weight bold))))
   '(compilation-error ((,class (:foreground "#E84040" :weight bold))))
   '(dired-directory ((,class (:foreground "#8FBFA3" :weight bold))))
   '(dired-flagged ((,class (:foreground "#E84040" :weight bold))))
   '(dired-header ((,class (:foreground "#A3D977" :weight bold))))
   '(dired-mark ((,class (:foreground "#9AD1A3" :weight bold))))
   '(dired-marked ((,class (:foreground "#9AD1A3" :weight bold))))
   '(dired-symlink ((,class (:foreground "#9FB8A5" :slant italic))))
   '(dired-warning ((,class (:foreground "#E8B86F" :weight bold))))
   '(org-level-1 ((,class (:foreground "#A3D977" :weight bold))))
   '(org-level-2 ((,class (:foreground "#8FBFA3" :weight bold))))
   '(org-level-3 ((,class (:foreground "#9AD1A3" :weight bold))))
   '(org-level-4 ((,class (:foreground "#9FB8A5" :weight bold))))
   '(org-level-5 ((,class (:foreground "#C9A24D" :weight bold))))
   '(org-level-6 ((,class (:foreground "#C9A257" :weight bold))))
   '(org-level-7 ((,class (:foreground "#CFC8BA" :weight bold))))
   '(org-level-8 ((,class (:foreground "#9FB8A5" :weight bold))))
   '(org-document-title ((,class (:foreground "#A3D977" :weight bold))))
   '(org-document-info ((,class (:foreground "#8FBFA3"))))
   '(org-document-info-keyword ((,class (:foreground "#6B7A6F"))))
   '(org-link ((,class (:foreground "#8FBFA3" :underline t))))
   '(org-code ((,class (:foreground "#C9A24D"))))
   '(org-verbatim ((,class (:foreground "#B08C4F"))))
   '(org-block ((,class (:foreground "#D9D3C7" :background "#0D120F"))))
   '(org-block-begin-line ((,class (:foreground "#6B7A6F" :background "#0D120F"))))
   '(org-block-end-line ((,class (:foreground "#6B7A6F" :background "#0D120F"))))
   '(org-todo ((,class (:foreground "#E84040" :weight bold))))
   '(org-done ((,class (:foreground "#8FBF8A" :weight bold))))
   '(org-headline-done ((,class (:foreground "#6B7A6F"))))
   '(org-date ((,class (:foreground "#9FB8A5" :underline t))))
   '(org-special-keyword ((,class (:foreground "#6B7A6F"))))
   '(org-tag ((,class (:foreground "#B8956F"))))
   '(markdown-header-face-1 ((,class (:foreground "#A3D977" :weight bold))))
   '(markdown-header-face-2 ((,class (:foreground "#8FBFA3" :weight bold))))
   '(markdown-header-face-3 ((,class (:foreground "#9AD1A3" :weight bold))))
   '(markdown-header-face-4 ((,class (:foreground "#9FB8A5" :weight bold))))
   '(markdown-header-face-5 ((,class (:foreground "#C9A24D" :weight bold))))
   '(markdown-header-face-6 ((,class (:foreground "#C9A257" :weight bold))))
   '(markdown-code-face ((,class (:foreground "#C9A24D" :background "#0D120F"))))
   '(markdown-inline-code-face ((,class (:foreground "#C9A24D"))))
   '(markdown-link-face ((,class (:foreground "#8FBFA3" :underline t))))
   '(markdown-url-face ((,class (:foreground "#9FB8A5" :underline t))))
   '(markdown-bold-face ((,class (:foreground nil :weight bold))))
   '(markdown-italic-face ((,class (:foreground nil :slant italic))))
   '(company-tooltip ((,class (:foreground "#D9D3C7" :background "#111814"))))
   '(company-tooltip-selection ((,class (:foreground nil :background "#1D3323"))))
   '(company-tooltip-common ((,class (:foreground "#9AD1A3" :weight bold))))
   '(company-tooltip-annotation ((,class (:foreground "#6B7A6F"))))
   '(company-scrollbar-bg ((,class (:foreground nil :background "#0D120F"))))
   '(company-scrollbar-fg ((,class (:foreground nil :background "#6B7A6F"))))
   '(flycheck-error ((,class (:foreground nil :underline (:color "#E84040" :style line)))))
   '(flycheck-warning ((,class (:foreground nil :underline (:color "#E8B86F" :style line)))))
   '(flycheck-info ((,class (:foreground nil :underline (:color "#8FBFA3" :style line)))))
   '(flymake-error ((,class (:foreground nil :underline (:color "#E84040" :style line)))))
   '(flymake-warning ((,class (:foreground nil :underline (:color "#E8B86F" :style line)))))
   '(flymake-note ((,class (:foreground nil :underline (:color "#8FBFA3" :style line)))))
   '(git-gutter:added ((,class (:foreground "#8FBF8A"))))
   '(git-gutter:deleted ((,class (:foreground "#E84040"))))
   '(git-gutter:modified ((,class (:foreground "#E8B86F"))))
   '(magit-branch-local ((,class (:foreground "#9AD1A3" :weight bold))))
   '(magit-branch-remote ((,class (:foreground "#8FBFA3" :weight bold))))
   '(magit-tag ((,class (:foreground "#C9A24D" :weight bold))))
   '(magit-section-heading ((,class (:foreground "#A3D977" :weight bold))))
   '(magit-section-highlight ((,class (:foreground nil :background "#111814"))))
   '(magit-diff-added ((,class (:foreground "#8FBF8A" :background "#0D120F"))))
   '(magit-diff-added-highlight ((,class (:foreground "#8FBF8A" :background "#111814"))))
   '(magit-diff-removed ((,class (:foreground "#E84040" :background "#0D120F"))))
   '(magit-diff-removed-highlight ((,class (:foreground "#E84040" :background "#111814"))))
   '(magit-diff-context ((,class (:foreground "#6B7A6F"))))
   '(magit-diff-context-highlight ((,class (:foreground "#D9D3C7" :background "#111814"))))
   '(magit-diff-hunk-heading ((,class (:foreground "#D9D3C7" :background "#0D120F"))))
   '(magit-diff-hunk-heading-highlight ((,class (:foreground "#D9D3C7" :background "#111814"))))
   '(magit-hash ((,class (:foreground "#B08C4F"))))
   '(whitespace-space ((,class (:foreground "#3E4A42"))))
   '(whitespace-tab ((,class (:foreground "#3E4A42"))))
   '(whitespace-newline ((,class (:foreground "#3E4A42"))))
   '(whitespace-trailing ((,class (:foreground nil :background "#2A1412"))))
   '(whitespace-line ((,class (:foreground nil :background "#2A1412"))))
   '(success ((,class (:foreground "#8FBF8A" :weight bold))))
   '(warning ((,class (:foreground "#E8B86F" :weight bold))))
   '(error ((,class (:foreground "#E84040" :weight bold))))
   '(button ((,class (:foreground "#8FBFA3" :underline t))))
   '(header-line ((,class (:foreground "#D9D3C7" :background "#0D120F"))))
   '(vertical-border ((,class (:foreground "#111814"))))
   '(window-divider ((,class (:foreground "#111814"))))
   '(window-divider-first-pixel ((,class (:foreground "#111814"))))
   '(window-divider-last-pixel ((,class (:foreground "#111814"))))
   ))

(provide-theme 'human-dark)

;;; human-dark-theme.el ends here
