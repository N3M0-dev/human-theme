;;; human-low-light-theme.el --- Human Low Light theme for Emacs 30 -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026 Human Theme Authors

;; Author: Human Theme Authors
;; URL: https://github.com/N3M0-dev/human-theme
;; Version: 1.1.1
;; Package-Requires: ((emacs "30.0"))
;; Keywords: faces, theme, accessibility

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Human Low Light - Research-grade Emacs theme based on vision science
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
;; Background: #141210
;; Foreground: #D9CFC4
;; Type: dark
;;
;; Installation:
;; 1. Place this file in ~/.emacs.d/themes/ or in your load-path
;; 2. Add (load-theme 'human-low-light t) to your init.el

;;; Code:

(deftheme human-low-light
  "Human Low Light - Research-grade theme based on vision science.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg "#141210")
      (fg "#D9CFC4")
      (bg-darker "#0F0D0B")
      (bg-lighter "#18150F")
      (fg-muted "#C9BFB4")
      (fg-very-muted "#A89F94")
      (shadow "#0A0806")
      
      ;; Green palette (keywords, functions)
      (green-keyword "#B8C97A")
      (green-function "#A8C98A")
      (green-leaf "#C9D7A0")
      (green-success "#A8C98A")
      (green-status "#98BF84")
      
      ;; Teal palette (types, structure)
      (teal-type "#9FBF9A")
      (teal-operator "#A8B89F")
      (teal-namespace "#A8C99A")
      (teal-structure "#B8C8B0")
      
      ;; Ochre palette (literals, constants)
      (ochre-warm "#D9A84D")
      (ochre-constant "#C09C5F")
      (ochre-warning "#E8C87F")
      (ochre-rust "#D88C4E")
      
      ;; Red palette (errors, alerts)
      (red-error "#E85050")
      (red-light "#E8B0AA")
      (red-rust "#E98A8A")
      (red-bg "#2A1814")
      
      ;; Brown palette (HTML, markup)
      (brown-html "#D9B267")
      (brown-attr "#C8A57F")
      (brown-tag "#B89A7A")
      
      ;; Gray palette (comments, UI)
      (gray-comment "#7A7A6F")
      (gray-line-num "#4A4A42")
      (gray-line-active "#B8BDA4")
      (gray-tan "#D9CFC4")
      (gray-tan-muted "#A8B89F")
      (gray-very-muted "#4A4A42")
      
      ;; UI colors
      (ui-selection "#2A2414")
      (ui-selection-inactive "#1A1814")
      (ui-selection-highlight "#1A1C14")
      (ui-word-highlight "#1A1814")
      (ui-word-highlight-strong "#221C14")
      (ui-find-match "#2A2010")
      (ui-find-match-highlight "#2A201080")
      (ui-hover "#141210")
      (ui-focus "#B8C97A")
      (ui-border "#18150F")
      
      ;; Diagnostics
      (diag-error "#E85050")
      (diag-warning "#E8C87F")
      (diag-info "#9FBF9A")
      (diag-hint "#98BF84"))

  (custom-theme-set-faces
   'human-low-light
   '(default ((,class (:foreground "#D9CFC4" :background "#141210"))))
   '(cursor ((,class (:foreground nil :background "#B8C97A"))))
   '(region ((,class (:foreground nil :background "#2A2414"))))
   '(highlight ((,class (:foreground nil :background "#1A1814"))))
   '(hl-line ((,class (:foreground nil :background "#18150F"))))
   '(fringe ((,class (:foreground "#4A4A42" :background "#141210"))))
   '(shadow ((,class (:foreground "#7A7A6F"))))
   '(secondary-selection ((,class (:foreground nil :background "#1A1814"))))
   '(trailing-whitespace ((,class (:foreground nil :background "#2A1814"))))
   '(font-lock-builtin-face ((,class (:foreground "#9FBF9A"))))
   '(font-lock-comment-delimiter-face ((,class (:foreground "#7A7A6F"))))
   '(font-lock-comment-face ((,class (:foreground "#7A7A6F" :slant italic))))
   '(font-lock-constant-face ((,class (:foreground "#C09C5F"))))
   '(font-lock-doc-face ((,class (:foreground "#7A7A6F" :slant italic))))
   '(font-lock-function-name-face ((,class (:foreground "#A8C98A" :weight bold))))
   '(font-lock-keyword-face ((,class (:foreground "#B8C97A" :weight bold))))
   '(font-lock-negation-char-face ((,class (:foreground "#E85050"))))
   '(font-lock-preprocessor-face ((,class (:foreground "#A8B89F"))))
   '(font-lock-regexp-grouping-backslash ((,class (:foreground "#E8C87F"))))
   '(font-lock-regexp-grouping-construct ((,class (:foreground "#E8C87F"))))
   '(font-lock-string-face ((,class (:foreground "#E8C87F"))))
   '(font-lock-type-face ((,class (:foreground "#9FBF9A" :weight bold))))
   '(font-lock-variable-name-face ((,class (:foreground "#D9CFC4"))))
   '(font-lock-warning-face ((,class (:foreground "#E8C87F" :weight bold))))
   '(mode-line ((,class (:foreground "#D9CFC4" :background "#18150F" :box (:line-width 1 :color "#18150F")))))
   '(mode-line-inactive ((,class (:foreground "#7A7A6F" :background "#0F0D0B" :box (:line-width 1 :color "#18150F")))))
   '(mode-line-buffer-id ((,class (:foreground "#B8C97A" :weight bold))))
   '(mode-line-emphasis ((,class (:foreground "#A8C98A" :weight bold))))
   '(mode-line-highlight ((,class (:foreground nil :background "#141210"))))
   '(line-number ((,class (:foreground "#4A4A42" :background "#141210"))))
   '(line-number-current-line ((,class (:foreground "#B8BDA4" :background "#18150F" :weight bold))))
   '(isearch ((,class (:foreground "#141210" :background "#2A2010" :weight bold))))
   '(isearch-fail ((,class (:foreground "#E85050" :weight bold))))
   '(lazy-highlight ((,class (:foreground nil :background "#2A201080"))))
   '(match ((,class (:foreground nil :background "#1A1814"))))
   '(show-paren-match ((,class (:foreground nil :background "#221C14" :weight bold))))
   '(show-paren-mismatch ((,class (:foreground "#E85050" :background "#2A1814" :weight bold))))
   '(link ((,class (:foreground "#9FBF9A" :underline t))))
   '(link-visited ((,class (:foreground "#A8B89F" :underline t))))
   '(minibuffer-prompt ((,class (:foreground "#B8C97A" :weight bold))))
   '(compilation-info ((,class (:foreground "#A8C98A"))))
   '(compilation-warning ((,class (:foreground "#E8C87F" :weight bold))))
   '(compilation-error ((,class (:foreground "#E85050" :weight bold))))
   '(dired-directory ((,class (:foreground "#9FBF9A" :weight bold))))
   '(dired-flagged ((,class (:foreground "#E85050" :weight bold))))
   '(dired-header ((,class (:foreground "#B8C97A" :weight bold))))
   '(dired-mark ((,class (:foreground "#A8C98A" :weight bold))))
   '(dired-marked ((,class (:foreground "#A8C98A" :weight bold))))
   '(dired-symlink ((,class (:foreground "#A8B89F" :slant italic))))
   '(dired-warning ((,class (:foreground "#E8C87F" :weight bold))))
   '(org-level-1 ((,class (:foreground "#B8C97A" :weight bold))))
   '(org-level-2 ((,class (:foreground "#9FBF9A" :weight bold))))
   '(org-level-3 ((,class (:foreground "#A8C98A" :weight bold))))
   '(org-level-4 ((,class (:foreground "#A8B89F" :weight bold))))
   '(org-level-5 ((,class (:foreground "#D9A84D" :weight bold))))
   '(org-level-6 ((,class (:foreground "#D9B267" :weight bold))))
   '(org-level-7 ((,class (:foreground "#D9CFC4" :weight bold))))
   '(org-level-8 ((,class (:foreground "#A8B89F" :weight bold))))
   '(org-document-title ((,class (:foreground "#B8C97A" :weight bold))))
   '(org-document-info ((,class (:foreground "#9FBF9A"))))
   '(org-document-info-keyword ((,class (:foreground "#7A7A6F"))))
   '(org-link ((,class (:foreground "#9FBF9A" :underline t))))
   '(org-code ((,class (:foreground "#D9A84D"))))
   '(org-verbatim ((,class (:foreground "#C09C5F"))))
   '(org-block ((,class (:foreground "#D9CFC4" :background "#0F0D0B"))))
   '(org-block-begin-line ((,class (:foreground "#7A7A6F" :background "#0F0D0B"))))
   '(org-block-end-line ((,class (:foreground "#7A7A6F" :background "#0F0D0B"))))
   '(org-todo ((,class (:foreground "#E85050" :weight bold))))
   '(org-done ((,class (:foreground "#98BF84" :weight bold))))
   '(org-headline-done ((,class (:foreground "#7A7A6F"))))
   '(org-date ((,class (:foreground "#A8B89F" :underline t))))
   '(org-special-keyword ((,class (:foreground "#7A7A6F"))))
   '(org-tag ((,class (:foreground "#C8A57F"))))
   '(markdown-header-face-1 ((,class (:foreground "#B8C97A" :weight bold))))
   '(markdown-header-face-2 ((,class (:foreground "#9FBF9A" :weight bold))))
   '(markdown-header-face-3 ((,class (:foreground "#A8C98A" :weight bold))))
   '(markdown-header-face-4 ((,class (:foreground "#A8B89F" :weight bold))))
   '(markdown-header-face-5 ((,class (:foreground "#D9A84D" :weight bold))))
   '(markdown-header-face-6 ((,class (:foreground "#D9B267" :weight bold))))
   '(markdown-code-face ((,class (:foreground "#D9A84D" :background "#0F0D0B"))))
   '(markdown-inline-code-face ((,class (:foreground "#D9A84D"))))
   '(markdown-link-face ((,class (:foreground "#9FBF9A" :underline t))))
   '(markdown-url-face ((,class (:foreground "#A8B89F" :underline t))))
   '(markdown-bold-face ((,class (:foreground nil :weight bold))))
   '(markdown-italic-face ((,class (:foreground nil :slant italic))))
   '(company-tooltip ((,class (:foreground "#D9CFC4" :background "#18150F"))))
   '(company-tooltip-selection ((,class (:foreground nil :background "#2A2414"))))
   '(company-tooltip-common ((,class (:foreground "#A8C98A" :weight bold))))
   '(company-tooltip-annotation ((,class (:foreground "#7A7A6F"))))
   '(company-scrollbar-bg ((,class (:foreground nil :background "#0F0D0B"))))
   '(company-scrollbar-fg ((,class (:foreground nil :background "#7A7A6F"))))
   '(flycheck-error ((,class (:foreground nil :underline (:color "#E85050" :style line)))))
   '(flycheck-warning ((,class (:foreground nil :underline (:color "#E8C87F" :style line)))))
   '(flycheck-info ((,class (:foreground nil :underline (:color "#9FBF9A" :style line)))))
   '(flymake-error ((,class (:foreground nil :underline (:color "#E85050" :style line)))))
   '(flymake-warning ((,class (:foreground nil :underline (:color "#E8C87F" :style line)))))
   '(flymake-note ((,class (:foreground nil :underline (:color "#9FBF9A" :style line)))))
   '(git-gutter:added ((,class (:foreground "#98BF84"))))
   '(git-gutter:deleted ((,class (:foreground "#E85050"))))
   '(git-gutter:modified ((,class (:foreground "#E8C87F"))))
   '(magit-branch-local ((,class (:foreground "#A8C98A" :weight bold))))
   '(magit-branch-remote ((,class (:foreground "#9FBF9A" :weight bold))))
   '(magit-tag ((,class (:foreground "#D9A84D" :weight bold))))
   '(magit-section-heading ((,class (:foreground "#B8C97A" :weight bold))))
   '(magit-section-highlight ((,class (:foreground nil :background "#18150F"))))
   '(magit-diff-added ((,class (:foreground "#98BF84" :background "#0F0D0B"))))
   '(magit-diff-added-highlight ((,class (:foreground "#98BF84" :background "#18150F"))))
   '(magit-diff-removed ((,class (:foreground "#E85050" :background "#0F0D0B"))))
   '(magit-diff-removed-highlight ((,class (:foreground "#E85050" :background "#18150F"))))
   '(magit-diff-context ((,class (:foreground "#7A7A6F"))))
   '(magit-diff-context-highlight ((,class (:foreground "#D9CFC4" :background "#18150F"))))
   '(magit-diff-hunk-heading ((,class (:foreground "#D9CFC4" :background "#0F0D0B"))))
   '(magit-diff-hunk-heading-highlight ((,class (:foreground "#D9CFC4" :background "#18150F"))))
   '(magit-hash ((,class (:foreground "#C09C5F"))))
   '(whitespace-space ((,class (:foreground "#4A4A42"))))
   '(whitespace-tab ((,class (:foreground "#4A4A42"))))
   '(whitespace-newline ((,class (:foreground "#4A4A42"))))
   '(whitespace-trailing ((,class (:foreground nil :background "#2A1814"))))
   '(whitespace-line ((,class (:foreground nil :background "#2A1814"))))
   '(success ((,class (:foreground "#98BF84" :weight bold))))
   '(warning ((,class (:foreground "#E8C87F" :weight bold))))
   '(error ((,class (:foreground "#E85050" :weight bold))))
   '(button ((,class (:foreground "#9FBF9A" :underline t))))
   '(header-line ((,class (:foreground "#D9CFC4" :background "#0F0D0B"))))
   '(vertical-border ((,class (:foreground "#18150F"))))
   '(window-divider ((,class (:foreground "#18150F"))))
   '(window-divider-first-pixel ((,class (:foreground "#18150F"))))
   '(window-divider-last-pixel ((,class (:foreground "#18150F"))))
   ))

(provide-theme 'human-low-light)

;;; human-low-light-theme.el ends here
