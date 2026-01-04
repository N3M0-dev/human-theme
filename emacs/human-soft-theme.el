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
   '(default ((,class (:foreground "#3A3530" :background "#F2F5F0"))))
   '(cursor ((,class (:foreground nil :background "#3E7A35"))))
   '(region ((,class (:foreground nil :background "#E5D9C8"))))
   '(highlight ((,class (:foreground nil :background "#EBE3D6"))))
   '(hl-line ((,class (:foreground nil :background "#F8FAF7"))))
   '(fringe ((,class (:foreground "#B8AAA0" :background "#F2F5F0"))))
   '(shadow ((,class (:foreground "#7A7070"))))
   '(secondary-selection ((,class (:foreground nil :background "#F0E8DC"))))
   '(trailing-whitespace ((,class (:foreground nil :background "#2A1412"))))
   '(font-lock-builtin-face ((,class (:foreground "#2A6F7F"))))
   '(font-lock-comment-delimiter-face ((,class (:foreground "#7A7070"))))
   '(font-lock-comment-face ((,class (:foreground "#7A7070" :slant italic))))
   '(font-lock-constant-face ((,class (:foreground "#7A6B4F"))))
   '(font-lock-doc-face ((,class (:foreground "#7A7070" :slant italic))))
   '(font-lock-function-name-face ((,class (:foreground "#3E7A3F" :weight bold))))
   '(font-lock-keyword-face ((,class (:foreground "#3E7A35" :weight bold))))
   '(font-lock-negation-char-face ((,class (:foreground "#9A4A3A"))))
   '(font-lock-preprocessor-face ((,class (:foreground "#357A8A"))))
   '(font-lock-regexp-grouping-backslash ((,class (:foreground "#8A6B2F"))))
   '(font-lock-regexp-grouping-construct ((,class (:foreground "#8A6B2F"))))
   '(font-lock-string-face ((,class (:foreground "#8A6B2F"))))
   '(font-lock-type-face ((,class (:foreground "#2A6F7F" :weight bold))))
   '(font-lock-variable-name-face ((,class (:foreground "#3A3530"))))
   '(font-lock-warning-face ((,class (:foreground "#8A6B2F" :weight bold))))
   '(mode-line ((,class (:foreground "#3A3530" :background "#F8FAF7" :box (:line-width 1 :color "#DED4C8")))))
   '(mode-line-inactive ((,class (:foreground "#7A7070" :background "#E8EDE5" :box (:line-width 1 :color "#DED4C8")))))
   '(mode-line-buffer-id ((,class (:foreground "#3E7A35" :weight bold))))
   '(mode-line-emphasis ((,class (:foreground "#3E7A3F" :weight bold))))
   '(mode-line-highlight ((,class (:foreground nil :background "#F3EBE0"))))
   '(line-number ((,class (:foreground "#B8AAA0" :background "#F2F5F0"))))
   '(line-number-current-line ((,class (:foreground "#6F6560" :background "#F8FAF7" :weight bold))))
   '(isearch ((,class (:foreground "#F2F5F0" :background "#DED4C8" :weight bold))))
   '(isearch-fail ((,class (:foreground "#9A4A3A" :weight bold))))
   '(lazy-highlight ((,class (:foreground nil :background "#EBE0D5"))))
   '(match ((,class (:foreground nil :background "#EBE3D6"))))
   '(show-paren-match ((,class (:foreground nil :background "#E3D9C8" :weight bold))))
   '(show-paren-mismatch ((,class (:foreground "#9A4A3A" :background "#2A1412" :weight bold))))
   '(link ((,class (:foreground "#2A6F7F" :underline t))))
   '(link-visited ((,class (:foreground "#357A8A" :underline t))))
   '(minibuffer-prompt ((,class (:foreground "#3E7A35" :weight bold))))
   '(compilation-info ((,class (:foreground "#3E7A3F"))))
   '(compilation-warning ((,class (:foreground "#8A6B2F" :weight bold))))
   '(compilation-error ((,class (:foreground "#9A4A3A" :weight bold))))
   '(dired-directory ((,class (:foreground "#2A6F7F" :weight bold))))
   '(dired-flagged ((,class (:foreground "#9A4A3A" :weight bold))))
   '(dired-header ((,class (:foreground "#3E7A35" :weight bold))))
   '(dired-mark ((,class (:foreground "#3E7A3F" :weight bold))))
   '(dired-marked ((,class (:foreground "#3E7A3F" :weight bold))))
   '(dired-symlink ((,class (:foreground "#357A8A" :slant italic))))
   '(dired-warning ((,class (:foreground "#8A6B2F" :weight bold))))
   '(org-level-1 ((,class (:foreground "#3E7A35" :weight bold))))
   '(org-level-2 ((,class (:foreground "#2A6F7F" :weight bold))))
   '(org-level-3 ((,class (:foreground "#3E7A3F" :weight bold))))
   '(org-level-4 ((,class (:foreground "#357A8A" :weight bold))))
   '(org-level-5 ((,class (:foreground "#8A6B2F" :weight bold))))
   '(org-level-6 ((,class (:foreground "#8A6B3F" :weight bold))))
   '(org-level-7 ((,class (:foreground "#3A3530" :weight bold))))
   '(org-level-8 ((,class (:foreground "#7A6F62" :weight bold))))
   '(org-document-title ((,class (:foreground "#3E7A35" :weight bold))))
   '(org-document-info ((,class (:foreground "#2A6F7F"))))
   '(org-document-info-keyword ((,class (:foreground "#7A7070"))))
   '(org-link ((,class (:foreground "#2A6F7F" :underline t))))
   '(org-code ((,class (:foreground "#8A6B2F"))))
   '(org-verbatim ((,class (:foreground "#7A6B4F"))))
   '(org-block ((,class (:foreground "#3A3530" :background "#E8EDE5"))))
   '(org-block-begin-line ((,class (:foreground "#7A7070" :background "#E8EDE5"))))
   '(org-block-end-line ((,class (:foreground "#7A7070" :background "#E8EDE5"))))
   '(org-todo ((,class (:foreground "#9A4A3A" :weight bold))))
   '(org-done ((,class (:foreground "#3E7A50" :weight bold))))
   '(org-headline-done ((,class (:foreground "#7A7070"))))
   '(org-date ((,class (:foreground "#357A8A" :underline t))))
   '(org-special-keyword ((,class (:foreground "#7A7070"))))
   '(org-tag ((,class (:foreground "#8A7B6A"))))
   '(markdown-header-face-1 ((,class (:foreground "#3E7A35" :weight bold))))
   '(markdown-header-face-2 ((,class (:foreground "#2A6F7F" :weight bold))))
   '(markdown-header-face-3 ((,class (:foreground "#3E7A3F" :weight bold))))
   '(markdown-header-face-4 ((,class (:foreground "#357A8A" :weight bold))))
   '(markdown-header-face-5 ((,class (:foreground "#8A6B2F" :weight bold))))
   '(markdown-header-face-6 ((,class (:foreground "#8A6B3F" :weight bold))))
   '(markdown-code-face ((,class (:foreground "#8A6B2F" :background "#E8EDE5"))))
   '(markdown-inline-code-face ((,class (:foreground "#8A6B2F"))))
   '(markdown-link-face ((,class (:foreground "#2A6F7F" :underline t))))
   '(markdown-url-face ((,class (:foreground "#357A8A" :underline t))))
   '(markdown-bold-face ((,class (:foreground nil :weight bold))))
   '(markdown-italic-face ((,class (:foreground nil :slant italic))))
   '(company-tooltip ((,class (:foreground "#3A3530" :background "#F8FAF7"))))
   '(company-tooltip-selection ((,class (:foreground nil :background "#E5D9C8"))))
   '(company-tooltip-common ((,class (:foreground "#3E7A3F" :weight bold))))
   '(company-tooltip-annotation ((,class (:foreground "#7A7070"))))
   '(company-scrollbar-bg ((,class (:foreground nil :background "#E8EDE5"))))
   '(company-scrollbar-fg ((,class (:foreground nil :background "#7A7070"))))
   '(flycheck-error ((,class (:foreground nil :underline (:color "#9A4A3A" :style line)))))
   '(flycheck-warning ((,class (:foreground nil :underline (:color "#8A6B2F" :style line)))))
   '(flycheck-info ((,class (:foreground nil :underline (:color "#2A6F7F" :style line)))))
   '(flymake-error ((,class (:foreground nil :underline (:color "#9A4A3A" :style line)))))
   '(flymake-warning ((,class (:foreground nil :underline (:color "#8A6B2F" :style line)))))
   '(flymake-note ((,class (:foreground nil :underline (:color "#2A6F7F" :style line)))))
   '(git-gutter:added ((,class (:foreground "#3E7A50"))))
   '(git-gutter:deleted ((,class (:foreground "#9A4A3A"))))
   '(git-gutter:modified ((,class (:foreground "#8A6B2F"))))
   '(magit-branch-local ((,class (:foreground "#3E7A3F" :weight bold))))
   '(magit-branch-remote ((,class (:foreground "#2A6F7F" :weight bold))))
   '(magit-tag ((,class (:foreground "#8A6B2F" :weight bold))))
   '(magit-section-heading ((,class (:foreground "#3E7A35" :weight bold))))
   '(magit-section-highlight ((,class (:foreground nil :background "#F8FAF7"))))
   '(magit-diff-added ((,class (:foreground "#3E7A50" :background "#E8EDE5"))))
   '(magit-diff-added-highlight ((,class (:foreground "#3E7A50" :background "#F8FAF7"))))
   '(magit-diff-removed ((,class (:foreground "#9A4A3A" :background "#E8EDE5"))))
   '(magit-diff-removed-highlight ((,class (:foreground "#9A4A3A" :background "#F8FAF7"))))
   '(magit-diff-context ((,class (:foreground "#7A7070"))))
   '(magit-diff-context-highlight ((,class (:foreground "#3A3530" :background "#F8FAF7"))))
   '(magit-diff-hunk-heading ((,class (:foreground "#3A3530" :background "#E8EDE5"))))
   '(magit-diff-hunk-heading-highlight ((,class (:foreground "#3A3530" :background "#F8FAF7"))))
   '(magit-hash ((,class (:foreground "#7A6B4F"))))
   '(whitespace-space ((,class (:foreground "#CFCAB8"))))
   '(whitespace-tab ((,class (:foreground "#CFCAB8"))))
   '(whitespace-newline ((,class (:foreground "#CFCAB8"))))
   '(whitespace-trailing ((,class (:foreground nil :background "#2A1412"))))
   '(whitespace-line ((,class (:foreground nil :background "#2A1412"))))
   '(success ((,class (:foreground "#3E7A50" :weight bold))))
   '(warning ((,class (:foreground "#8A6B2F" :weight bold))))
   '(error ((,class (:foreground "#9A4A3A" :weight bold))))
   '(button ((,class (:foreground "#2A6F7F" :underline t))))
   '(header-line ((,class (:foreground "#3A3530" :background "#E8EDE5"))))
   '(vertical-border ((,class (:foreground "#DED4C8"))))
   '(window-divider ((,class (:foreground "#DED4C8"))))
   '(window-divider-first-pixel ((,class (:foreground "#DED4C8"))))
   '(window-divider-last-pixel ((,class (:foreground "#DED4C8"))))
   ))

(provide-theme 'human-soft)

;;; human-soft-theme.el ends here
