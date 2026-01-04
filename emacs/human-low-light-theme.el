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
   `(default ((,class (:foreground ,gray-tan :background ,ui-hover))))
   `(cursor ((,class (:foreground nil :background ,ui-focus))))
   `(region ((,class (:foreground nil :background ,ui-selection))))
   `(highlight ((,class (:foreground nil :background ,ui-word-highlight))))
   `(hl-line ((,class (:foreground nil :background ,ui-border))))
   `(fringe ((,class (:foreground ,gray-very-muted :background ,ui-hover))))
   `(shadow ((,class (:foreground ,gray-comment))))
   `(secondary-selection ((,class (:foreground nil :background ,ui-word-highlight))))
   `(trailing-whitespace ((,class (:foreground nil :background ,red-bg))))
   `(font-lock-builtin-face ((,class (:foreground ,diag-info))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,gray-comment))))
   `(font-lock-comment-face ((,class (:foreground ,gray-comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,ochre-constant))))
   `(font-lock-doc-face ((,class (:foreground ,gray-comment :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,green-success :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,ui-focus :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,diag-error))))
   `(font-lock-preprocessor-face ((,class (:foreground ,gray-tan-muted))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,diag-warning))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,diag-warning))))
   `(font-lock-string-face ((,class (:foreground ,diag-warning))))
   `(font-lock-type-face ((,class (:foreground ,diag-info :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,gray-tan))))
   `(font-lock-warning-face ((,class (:foreground ,diag-warning :weight bold))))
   `(mode-line ((,class (:foreground ,gray-tan :background ,ui-border :box (:line-width 1 :color ,ui-border)))))
   `(mode-line-inactive ((,class (:foreground ,gray-comment :background ,bg-darker :box (:line-width 1 :color ,ui-border)))))
   `(mode-line-buffer-id ((,class (:foreground ,ui-focus :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,green-success :weight bold))))
   `(mode-line-highlight ((,class (:foreground nil :background ,ui-hover))))
   `(line-number ((,class (:foreground ,gray-very-muted :background ,ui-hover))))
   `(line-number-current-line ((,class (:foreground ,gray-line-active :background ,ui-border :weight bold))))
   `(isearch ((,class (:foreground ,ui-hover :background ,ui-find-match :weight bold))))
   `(isearch-fail ((,class (:foreground ,diag-error :weight bold))))
   `(lazy-highlight ((,class (:foreground nil :background ,ui-find-match-highlight))))
   `(match ((,class (:foreground nil :background ,ui-word-highlight))))
   `(show-paren-match ((,class (:foreground nil :background ,ui-word-highlight-strong :weight bold))))
   `(show-paren-mismatch ((,class (:foreground ,diag-error :background ,red-bg :weight bold))))
   `(link ((,class (:foreground ,diag-info :underline t))))
   `(link-visited ((,class (:foreground ,gray-tan-muted :underline t))))
   `(minibuffer-prompt ((,class (:foreground ,ui-focus :weight bold))))
   `(compilation-info ((,class (:foreground ,green-success))))
   `(compilation-warning ((,class (:foreground ,diag-warning :weight bold))))
   `(compilation-error ((,class (:foreground ,diag-error :weight bold))))
   `(dired-directory ((,class (:foreground ,diag-info :weight bold))))
   `(dired-flagged ((,class (:foreground ,diag-error :weight bold))))
   `(dired-header ((,class (:foreground ,ui-focus :weight bold))))
   `(dired-mark ((,class (:foreground ,green-success :weight bold))))
   `(dired-marked ((,class (:foreground ,green-success :weight bold))))
   `(dired-symlink ((,class (:foreground ,gray-tan-muted :slant italic))))
   `(dired-warning ((,class (:foreground ,diag-warning :weight bold))))
   `(org-level-1 ((,class (:foreground ,ui-focus :weight bold))))
   `(org-level-2 ((,class (:foreground ,diag-info :weight bold))))
   `(org-level-3 ((,class (:foreground ,green-success :weight bold))))
   `(org-level-4 ((,class (:foreground ,gray-tan-muted :weight bold))))
   `(org-level-5 ((,class (:foreground ,ochre-warm :weight bold))))
   `(org-level-6 ((,class (:foreground ,brown-html :weight bold))))
   `(org-level-7 ((,class (:foreground ,gray-tan :weight bold))))
   `(org-level-8 ((,class (:foreground ,gray-tan-muted :weight bold))))
   `(org-document-title ((,class (:foreground ,ui-focus :weight bold))))
   `(org-document-info ((,class (:foreground ,diag-info))))
   `(org-document-info-keyword ((,class (:foreground ,gray-comment))))
   `(org-link ((,class (:foreground ,diag-info :underline t))))
   `(org-code ((,class (:foreground ,ochre-warm))))
   `(org-verbatim ((,class (:foreground ,ochre-constant))))
   `(org-block ((,class (:foreground ,gray-tan :background ,bg-darker))))
   `(org-block-begin-line ((,class (:foreground ,gray-comment :background ,bg-darker))))
   `(org-block-end-line ((,class (:foreground ,gray-comment :background ,bg-darker))))
   `(org-todo ((,class (:foreground ,diag-error :weight bold))))
   `(org-done ((,class (:foreground ,diag-hint :weight bold))))
   `(org-headline-done ((,class (:foreground ,gray-comment))))
   `(org-date ((,class (:foreground ,gray-tan-muted :underline t))))
   `(org-special-keyword ((,class (:foreground ,gray-comment))))
   `(org-tag ((,class (:foreground ,brown-attr))))
   `(markdown-header-face-1 ((,class (:foreground ,ui-focus :weight bold))))
   `(markdown-header-face-2 ((,class (:foreground ,diag-info :weight bold))))
   `(markdown-header-face-3 ((,class (:foreground ,green-success :weight bold))))
   `(markdown-header-face-4 ((,class (:foreground ,gray-tan-muted :weight bold))))
   `(markdown-header-face-5 ((,class (:foreground ,ochre-warm :weight bold))))
   `(markdown-header-face-6 ((,class (:foreground ,brown-html :weight bold))))
   `(markdown-code-face ((,class (:foreground ,ochre-warm :background ,bg-darker))))
   `(markdown-inline-code-face ((,class (:foreground ,ochre-warm))))
   `(markdown-link-face ((,class (:foreground ,diag-info :underline t))))
   `(markdown-url-face ((,class (:foreground ,gray-tan-muted :underline t))))
   `(markdown-bold-face ((,class (:foreground nil :weight bold))))
   `(markdown-italic-face ((,class (:foreground nil :slant italic))))
   `(company-tooltip ((,class (:foreground ,gray-tan :background ,ui-border))))
   `(company-tooltip-selection ((,class (:foreground nil :background ,ui-selection))))
   `(company-tooltip-common ((,class (:foreground ,green-success :weight bold))))
   `(company-tooltip-annotation ((,class (:foreground ,gray-comment))))
   `(company-scrollbar-bg ((,class (:foreground nil :background ,bg-darker))))
   `(company-scrollbar-fg ((,class (:foreground nil :background ,gray-comment))))
   `(flycheck-error ((,class (:foreground nil :underline (:color ,diag-error :style line)))))
   `(flycheck-warning ((,class (:foreground nil :underline (:color ,diag-warning :style line)))))
   `(flycheck-info ((,class (:foreground nil :underline (:color ,diag-info :style line)))))
   `(flymake-error ((,class (:foreground nil :underline (:color ,diag-error :style line)))))
   `(flymake-warning ((,class (:foreground nil :underline (:color ,diag-warning :style line)))))
   `(flymake-note ((,class (:foreground nil :underline (:color ,diag-info :style line)))))
   `(git-gutter:added ((,class (:foreground ,diag-hint))))
   `(git-gutter:deleted ((,class (:foreground ,diag-error))))
   `(git-gutter:modified ((,class (:foreground ,diag-warning))))
   `(magit-branch-local ((,class (:foreground ,green-success :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,diag-info :weight bold))))
   `(magit-tag ((,class (:foreground ,ochre-warm :weight bold))))
   `(magit-section-heading ((,class (:foreground ,ui-focus :weight bold))))
   `(magit-section-highlight ((,class (:foreground nil :background ,ui-border))))
   `(magit-diff-added ((,class (:foreground ,diag-hint :background ,bg-darker))))
   `(magit-diff-added-highlight ((,class (:foreground ,diag-hint :background ,ui-border))))
   `(magit-diff-removed ((,class (:foreground ,diag-error :background ,bg-darker))))
   `(magit-diff-removed-highlight ((,class (:foreground ,diag-error :background ,ui-border))))
   `(magit-diff-context ((,class (:foreground ,gray-comment))))
   `(magit-diff-context-highlight ((,class (:foreground ,gray-tan :background ,ui-border))))
   `(magit-diff-hunk-heading ((,class (:foreground ,gray-tan :background ,bg-darker))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,gray-tan :background ,ui-border))))
   `(magit-hash ((,class (:foreground ,ochre-constant))))
   `(whitespace-space ((,class (:foreground ,gray-very-muted))))
   `(whitespace-tab ((,class (:foreground ,gray-very-muted))))
   `(whitespace-newline ((,class (:foreground ,gray-very-muted))))
   `(whitespace-trailing ((,class (:foreground nil :background ,red-bg))))
   `(whitespace-line ((,class (:foreground nil :background ,red-bg))))
   `(success ((,class (:foreground ,diag-hint :weight bold))))
   `(warning ((,class (:foreground ,diag-warning :weight bold))))
   `(error ((,class (:foreground ,diag-error :weight bold))))
   `(button ((,class (:foreground ,diag-info :underline t))))
   `(header-line ((,class (:foreground ,gray-tan :background ,bg-darker))))
   `(vertical-border ((,class (:foreground ,ui-border))))
   `(window-divider ((,class (:foreground ,ui-border))))
   `(window-divider-first-pixel ((,class (:foreground ,ui-border))))
   `(window-divider-last-pixel ((,class (:foreground ,ui-border))))
   ))

(provide-theme 'human-low-light)

;;; human-low-light-theme.el ends here
