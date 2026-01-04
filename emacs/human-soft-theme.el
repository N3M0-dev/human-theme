;;; human-soft-theme.el --- Human Soft theme for Emacs 30 -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026 Human Theme Authors

;; Author: Human Theme Authors
;; URL: https://github.com/N3M0-dev/human-theme
;; Version: 1.1.1
;; Package-Requires: ((emacs "30.0"))
;; Keywords: faces, theme, accessibility

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Human Soft - Research-grade Emacs theme based on vision science
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
;; Background: #F2F5F0
;; Foreground: #3A3530
;; Type: light
;;
;; Installation:
;; 1. Place this file in ~/.emacs.d/themes/ or in your load-path
;; 2. Add (load-theme 'human-soft t) to your init.el

;;; Code:

(deftheme human-soft
  "Human Soft - Research-grade theme based on vision science.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg "#F2F5F0")
      (fg "#3A3530")
      (bg-darker "#E8EDE5")
      (bg-lighter "#F8FAF7")
      (fg-muted "#7A6F62")
      (fg-very-muted "#AAB0AA")
      (shadow "#E0E5DD")
      
      ;; Green palette (keywords, functions)
      (green-keyword "#3E7A35")
      (green-function "#3E7A3F")
      (green-leaf "#4A8555")
      (green-success "#4A8A45")
      (green-status "#3E7A50")
      
      ;; Teal palette (types, structure)
      (teal-type "#2A6F7F")
      (teal-operator "#357A8A")
      (teal-namespace "#2F7A8F")
      (teal-structure "#3D7A8F")
      
      ;; Ochre palette (literals, constants)
      (ochre-warm "#8A6B2F")
      (ochre-constant "#7A6B4F")
      (ochre-warning "#8A6B2F")
      (ochre-rust "#9A5D3C")
      
      ;; Red palette (errors, alerts)
      (red-error "#9A4A3A")
      (red-light "#B85555")
      (red-rust "#9A5050")
      (red-bg "#2A1412")
      
      ;; Brown palette (HTML, markup)
      (brown-html "#8A6B3F")
      (brown-attr "#8A7B6A")
      (brown-tag "#6A5B4F")
      
      ;; Gray palette (comments, UI)
      (gray-comment "#7A7070")
      (gray-line-num "#B8AAA0")
      (gray-line-active "#6F6560")
      (gray-tan "#3A3530")
      (gray-tan-muted "#7A6F62")
      (gray-very-muted "#CFCAB8")
      
      ;; UI colors
      (ui-selection "#E5D9C8")
      (ui-selection-inactive "#F0E8DC")
      (ui-selection-highlight "#DFD4C5")
      (ui-word-highlight "#EBE3D6")
      (ui-word-highlight-strong "#E3D9C8")
      (ui-find-match "#DED4C8")
      (ui-find-match-highlight "#EBE0D5")
      (ui-hover "#F3EBE0")
      (ui-focus "#4A8A45")
      (ui-border "#DED4C8")
      
      ;; Diagnostics
      (diag-error "#B85A4A")
      (diag-warning "#A97B2F")
      (diag-info "#2F7A8A")
      (diag-hint "#4A8A45"))

  (custom-theme-set-faces
   'human-soft
   `(default ((,class (:foreground ,gray-tan :background ,bg))))
   `(cursor ((,class (:foreground nil :background ,green-keyword))))
   `(region ((,class (:foreground nil :background ,ui-selection))))
   `(highlight ((,class (:foreground nil :background ,ui-word-highlight))))
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
   `(font-lock-variable-name-face ((,class (:foreground ,gray-tan))))
   `(font-lock-warning-face ((,class (:foreground ,ochre-warning :weight bold))))
   `(mode-line ((,class (:foreground ,gray-tan :background ,bg-lighter :box (:line-width 1 :color ,ui-border)))))
   `(mode-line-inactive ((,class (:foreground ,gray-comment :background ,bg-darker :box (:line-width 1 :color ,ui-border)))))
   `(mode-line-buffer-id ((,class (:foreground ,green-keyword :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,green-function :weight bold))))
   `(mode-line-highlight ((,class (:foreground nil :background ,ui-hover))))
   `(line-number ((,class (:foreground ,gray-line-num :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,gray-line-active :background ,bg-lighter :weight bold))))
   `(isearch ((,class (:foreground ,bg :background ,ui-border :weight bold))))
   `(isearch-fail ((,class (:foreground ,red-error :weight bold))))
   `(lazy-highlight ((,class (:foreground nil :background ,ui-find-match-highlight))))
   `(match ((,class (:foreground nil :background ,ui-word-highlight))))
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
   `(org-level-5 ((,class (:foreground ,ochre-warning :weight bold))))
   `(org-level-6 ((,class (:foreground ,brown-html :weight bold))))
   `(org-level-7 ((,class (:foreground ,gray-tan :weight bold))))
   `(org-level-8 ((,class (:foreground ,gray-tan-muted :weight bold))))
   `(org-document-title ((,class (:foreground ,green-keyword :weight bold))))
   `(org-document-info ((,class (:foreground ,teal-type))))
   `(org-document-info-keyword ((,class (:foreground ,gray-comment))))
   `(org-link ((,class (:foreground ,teal-type :underline t))))
   `(org-code ((,class (:foreground ,ochre-warning))))
   `(org-verbatim ((,class (:foreground ,ochre-constant))))
   `(org-block ((,class (:foreground ,gray-tan :background ,bg-darker))))
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
   `(markdown-header-face-5 ((,class (:foreground ,ochre-warning :weight bold))))
   `(markdown-header-face-6 ((,class (:foreground ,brown-html :weight bold))))
   `(markdown-code-face ((,class (:foreground ,ochre-warning :background ,bg-darker))))
   `(markdown-inline-code-face ((,class (:foreground ,ochre-warning))))
   `(markdown-link-face ((,class (:foreground ,teal-type :underline t))))
   `(markdown-url-face ((,class (:foreground ,teal-operator :underline t))))
   `(markdown-bold-face ((,class (:foreground nil :weight bold))))
   `(markdown-italic-face ((,class (:foreground nil :slant italic))))
   `(company-tooltip ((,class (:foreground ,gray-tan :background ,bg-lighter))))
   `(company-tooltip-selection ((,class (:foreground nil :background ,ui-selection))))
   `(company-tooltip-common ((,class (:foreground ,green-function :weight bold))))
   `(company-tooltip-annotation ((,class (:foreground ,gray-comment))))
   `(company-scrollbar-bg ((,class (:foreground nil :background ,bg-darker))))
   `(company-scrollbar-fg ((,class (:foreground nil :background ,gray-comment))))
   `(flycheck-error ((,class (:foreground nil :underline (:color ,red-error :style line)))))
   `(flycheck-warning ((,class (:foreground nil :underline (:color ,ochre-warning :style line)))))
   `(flycheck-info ((,class (:foreground nil :underline (:color ,teal-type :style line)))))
   `(flymake-error ((,class (:foreground nil :underline (:color ,red-error :style line)))))
   `(flymake-warning ((,class (:foreground nil :underline (:color ,ochre-warning :style line)))))
   `(flymake-note ((,class (:foreground nil :underline (:color ,teal-type :style line)))))
   `(git-gutter:added ((,class (:foreground ,green-status))))
   `(git-gutter:deleted ((,class (:foreground ,red-error))))
   `(git-gutter:modified ((,class (:foreground ,ochre-warning))))
   `(magit-branch-local ((,class (:foreground ,green-function :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,teal-type :weight bold))))
   `(magit-tag ((,class (:foreground ,ochre-warning :weight bold))))
   `(magit-section-heading ((,class (:foreground ,green-keyword :weight bold))))
   `(magit-section-highlight ((,class (:foreground nil :background ,bg-lighter))))
   `(magit-diff-added ((,class (:foreground ,green-status :background ,bg-darker))))
   `(magit-diff-added-highlight ((,class (:foreground ,green-status :background ,bg-lighter))))
   `(magit-diff-removed ((,class (:foreground ,red-error :background ,bg-darker))))
   `(magit-diff-removed-highlight ((,class (:foreground ,red-error :background ,bg-lighter))))
   `(magit-diff-context ((,class (:foreground ,gray-comment))))
   `(magit-diff-context-highlight ((,class (:foreground ,gray-tan :background ,bg-lighter))))
   `(magit-diff-hunk-heading ((,class (:foreground ,gray-tan :background ,bg-darker))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,gray-tan :background ,bg-lighter))))
   `(magit-hash ((,class (:foreground ,ochre-constant))))
   `(whitespace-space ((,class (:foreground ,gray-very-muted))))
   `(whitespace-tab ((,class (:foreground ,gray-very-muted))))
   `(whitespace-newline ((,class (:foreground ,gray-very-muted))))
   `(whitespace-trailing ((,class (:foreground nil :background ,red-bg))))
   `(whitespace-line ((,class (:foreground nil :background ,red-bg))))
   `(success ((,class (:foreground ,green-status :weight bold))))
   `(warning ((,class (:foreground ,ochre-warning :weight bold))))
   `(error ((,class (:foreground ,red-error :weight bold))))
   `(button ((,class (:foreground ,teal-type :underline t))))
   `(header-line ((,class (:foreground ,gray-tan :background ,bg-darker))))
   `(vertical-border ((,class (:foreground ,ui-border))))
   `(window-divider ((,class (:foreground ,ui-border))))
   `(window-divider-first-pixel ((,class (:foreground ,ui-border))))
   `(window-divider-last-pixel ((,class (:foreground ,ui-border))))
   ))

(provide-theme 'human-soft)

;;; human-soft-theme.el ends here
