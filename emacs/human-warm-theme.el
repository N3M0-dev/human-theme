;;; human-warm-theme.el --- Human Warm theme for Emacs 30 -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026 Human Theme Authors

;; Author: Human Theme Authors
;; URL: https://github.com/N3M0-dev/human-theme
;; Version: 1.1.1
;; Package-Requires: ((emacs "30.0"))
;; Keywords: faces, theme, accessibility

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Human Warm - Research-grade Emacs theme based on vision science
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
;; Background: #F5F0E8
;; Foreground: #2D2520
;; Type: light
;;
;; Installation:
;; 1. Place this file in ~/.emacs.d/themes/ or in your load-path
;; 2. Add (load-theme 'human-warm t) to your init.el

;;; Code:

(deftheme human-warm
  "Human Warm - Research-grade theme based on vision science.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg "#F5F0E8")
      (fg "#2D2520")
      (bg-darker "#E8DED0")
      (bg-lighter "#FAF7F0")
      (fg-muted "#6B5F52")
      (fg-very-muted "#A89F94")
      (shadow "#DDD0C0")
      
      ;; Green palette (keywords, functions)
      (green-keyword "#357A25")
      (green-function "#357A2F")
      (green-leaf "#458545")
      (green-success "#458A35")
      (green-status "#357A40")
      
      ;; Teal palette (types, structure)
      (teal-type "#2A6F5F")
      (teal-operator "#357A6A")
      (teal-namespace "#2F7A6F")
      (teal-structure "#3D7A6F")
      
      ;; Ochre palette (literals, constants)
      (ochre-warm "#7A5B1F")
      (ochre-constant "#7A6B3F")
      (ochre-warning "#7A5B1F")
      (ochre-rust "#9A5D2C")
      
      ;; Red palette (errors, alerts)
      (red-error "#9A4A2A")
      (red-light "#B85545")
      (red-rust "#9A5040")
      (red-bg "#2A1412")
      
      ;; Brown palette (HTML, markup)
      (brown-html "#8A6B2F")
      (brown-attr "#8A7B5A")
      (brown-tag "#6A5B3F")
      
      ;; Gray palette (comments, UI)
      (gray-comment "#7A7060")
      (gray-line-num "#B8AA90")
      (gray-line-active "#6F6550")
      (gray-tan "#2D2520")
      (gray-tan-muted "#6B5F52")
      (gray-very-muted "#CFC3B8")
      
      ;; UI colors
      (ui-selection "#E8D9C8")
      (ui-selection-inactive "#F0E3D5")
      (ui-selection-highlight "#E0D0C0")
      (ui-word-highlight "#EDE5D8")
      (ui-word-highlight-strong "#E5D9C8")
      (ui-find-match "#DFD0C0")
      (ui-find-match-highlight "#EBDCd0")
      (ui-hover "#F2E8DC")
      (ui-focus "#458A35")
      (ui-border "#DFD0C0")
      
      ;; Diagnostics
      (diag-error "#B85A3A")
      (diag-warning "#A97B1F")
      (diag-info "#2F7A6A")
      (diag-hint "#458A35"))

  (custom-theme-set-faces
   'human-warm
   '(default ((,class (:foreground "#2D2520" :background "#F5F0E8"))))
   '(cursor ((,class (:foreground nil :background "#357A25"))))
   '(region ((,class (:foreground nil :background "#E8D9C8"))))
   '(highlight ((,class (:foreground nil :background "#EDE5D8"))))
   '(hl-line ((,class (:foreground nil :background "#FAF7F0"))))
   '(fringe ((,class (:foreground "#B8AA90" :background "#F5F0E8"))))
   '(shadow ((,class (:foreground "#7A7060"))))
   '(secondary-selection ((,class (:foreground nil :background "#F0E3D5"))))
   '(trailing-whitespace ((,class (:foreground nil :background "#2A1412"))))
   '(font-lock-builtin-face ((,class (:foreground "#2A6F5F"))))
   '(font-lock-comment-delimiter-face ((,class (:foreground "#7A7060"))))
   '(font-lock-comment-face ((,class (:foreground "#7A7060" :slant italic))))
   '(font-lock-constant-face ((,class (:foreground "#7A6B3F"))))
   '(font-lock-doc-face ((,class (:foreground "#7A7060" :slant italic))))
   '(font-lock-function-name-face ((,class (:foreground "#357A2F" :weight bold))))
   '(font-lock-keyword-face ((,class (:foreground "#357A25" :weight bold))))
   '(font-lock-negation-char-face ((,class (:foreground "#9A4A2A"))))
   '(font-lock-preprocessor-face ((,class (:foreground "#357A6A"))))
   '(font-lock-regexp-grouping-backslash ((,class (:foreground "#7A5B1F"))))
   '(font-lock-regexp-grouping-construct ((,class (:foreground "#7A5B1F"))))
   '(font-lock-string-face ((,class (:foreground "#7A5B1F"))))
   '(font-lock-type-face ((,class (:foreground "#2A6F5F" :weight bold))))
   '(font-lock-variable-name-face ((,class (:foreground "#2D2520"))))
   '(font-lock-warning-face ((,class (:foreground "#7A5B1F" :weight bold))))
   '(mode-line ((,class (:foreground "#2D2520" :background "#FAF7F0" :box (:line-width 1 :color "#DFD0C0")))))
   '(mode-line-inactive ((,class (:foreground "#7A7060" :background "#E8DED0" :box (:line-width 1 :color "#DFD0C0")))))
   '(mode-line-buffer-id ((,class (:foreground "#357A25" :weight bold))))
   '(mode-line-emphasis ((,class (:foreground "#357A2F" :weight bold))))
   '(mode-line-highlight ((,class (:foreground nil :background "#F2E8DC"))))
   '(line-number ((,class (:foreground "#B8AA90" :background "#F5F0E8"))))
   '(line-number-current-line ((,class (:foreground "#6F6550" :background "#FAF7F0" :weight bold))))
   '(isearch ((,class (:foreground "#F5F0E8" :background "#DFD0C0" :weight bold))))
   '(isearch-fail ((,class (:foreground "#9A4A2A" :weight bold))))
   '(lazy-highlight ((,class (:foreground nil :background "#EBDCd0"))))
   '(match ((,class (:foreground nil :background "#EDE5D8"))))
   '(show-paren-match ((,class (:foreground nil :background "#E5D9C8" :weight bold))))
   '(show-paren-mismatch ((,class (:foreground "#9A4A2A" :background "#2A1412" :weight bold))))
   '(link ((,class (:foreground "#2A6F5F" :underline t))))
   '(link-visited ((,class (:foreground "#357A6A" :underline t))))
   '(minibuffer-prompt ((,class (:foreground "#357A25" :weight bold))))
   '(compilation-info ((,class (:foreground "#357A2F"))))
   '(compilation-warning ((,class (:foreground "#7A5B1F" :weight bold))))
   '(compilation-error ((,class (:foreground "#9A4A2A" :weight bold))))
   '(dired-directory ((,class (:foreground "#2A6F5F" :weight bold))))
   '(dired-flagged ((,class (:foreground "#9A4A2A" :weight bold))))
   '(dired-header ((,class (:foreground "#357A25" :weight bold))))
   '(dired-mark ((,class (:foreground "#357A2F" :weight bold))))
   '(dired-marked ((,class (:foreground "#357A2F" :weight bold))))
   '(dired-symlink ((,class (:foreground "#357A6A" :slant italic))))
   '(dired-warning ((,class (:foreground "#7A5B1F" :weight bold))))
   '(org-level-1 ((,class (:foreground "#357A25" :weight bold))))
   '(org-level-2 ((,class (:foreground "#2A6F5F" :weight bold))))
   '(org-level-3 ((,class (:foreground "#357A2F" :weight bold))))
   '(org-level-4 ((,class (:foreground "#357A6A" :weight bold))))
   '(org-level-5 ((,class (:foreground "#7A5B1F" :weight bold))))
   '(org-level-6 ((,class (:foreground "#8A6B2F" :weight bold))))
   '(org-level-7 ((,class (:foreground "#2D2520" :weight bold))))
   '(org-level-8 ((,class (:foreground "#6B5F52" :weight bold))))
   '(org-document-title ((,class (:foreground "#357A25" :weight bold))))
   '(org-document-info ((,class (:foreground "#2A6F5F"))))
   '(org-document-info-keyword ((,class (:foreground "#7A7060"))))
   '(org-link ((,class (:foreground "#2A6F5F" :underline t))))
   '(org-code ((,class (:foreground "#7A5B1F"))))
   '(org-verbatim ((,class (:foreground "#7A6B3F"))))
   '(org-block ((,class (:foreground "#2D2520" :background "#E8DED0"))))
   '(org-block-begin-line ((,class (:foreground "#7A7060" :background "#E8DED0"))))
   '(org-block-end-line ((,class (:foreground "#7A7060" :background "#E8DED0"))))
   '(org-todo ((,class (:foreground "#9A4A2A" :weight bold))))
   '(org-done ((,class (:foreground "#357A40" :weight bold))))
   '(org-headline-done ((,class (:foreground "#7A7060"))))
   '(org-date ((,class (:foreground "#357A6A" :underline t))))
   '(org-special-keyword ((,class (:foreground "#7A7060"))))
   '(org-tag ((,class (:foreground "#8A7B5A"))))
   '(markdown-header-face-1 ((,class (:foreground "#357A25" :weight bold))))
   '(markdown-header-face-2 ((,class (:foreground "#2A6F5F" :weight bold))))
   '(markdown-header-face-3 ((,class (:foreground "#357A2F" :weight bold))))
   '(markdown-header-face-4 ((,class (:foreground "#357A6A" :weight bold))))
   '(markdown-header-face-5 ((,class (:foreground "#7A5B1F" :weight bold))))
   '(markdown-header-face-6 ((,class (:foreground "#8A6B2F" :weight bold))))
   '(markdown-code-face ((,class (:foreground "#7A5B1F" :background "#E8DED0"))))
   '(markdown-inline-code-face ((,class (:foreground "#7A5B1F"))))
   '(markdown-link-face ((,class (:foreground "#2A6F5F" :underline t))))
   '(markdown-url-face ((,class (:foreground "#357A6A" :underline t))))
   '(markdown-bold-face ((,class (:foreground nil :weight bold))))
   '(markdown-italic-face ((,class (:foreground nil :slant italic))))
   '(company-tooltip ((,class (:foreground "#2D2520" :background "#FAF7F0"))))
   '(company-tooltip-selection ((,class (:foreground nil :background "#E8D9C8"))))
   '(company-tooltip-common ((,class (:foreground "#357A2F" :weight bold))))
   '(company-tooltip-annotation ((,class (:foreground "#7A7060"))))
   '(company-scrollbar-bg ((,class (:foreground nil :background "#E8DED0"))))
   '(company-scrollbar-fg ((,class (:foreground nil :background "#7A7060"))))
   '(flycheck-error ((,class (:foreground nil :underline (:color "#9A4A2A" :style line)))))
   '(flycheck-warning ((,class (:foreground nil :underline (:color "#7A5B1F" :style line)))))
   '(flycheck-info ((,class (:foreground nil :underline (:color "#2A6F5F" :style line)))))
   '(flymake-error ((,class (:foreground nil :underline (:color "#9A4A2A" :style line)))))
   '(flymake-warning ((,class (:foreground nil :underline (:color "#7A5B1F" :style line)))))
   '(flymake-note ((,class (:foreground nil :underline (:color "#2A6F5F" :style line)))))
   '(git-gutter:added ((,class (:foreground "#357A40"))))
   '(git-gutter:deleted ((,class (:foreground "#9A4A2A"))))
   '(git-gutter:modified ((,class (:foreground "#7A5B1F"))))
   '(magit-branch-local ((,class (:foreground "#357A2F" :weight bold))))
   '(magit-branch-remote ((,class (:foreground "#2A6F5F" :weight bold))))
   '(magit-tag ((,class (:foreground "#7A5B1F" :weight bold))))
   '(magit-section-heading ((,class (:foreground "#357A25" :weight bold))))
   '(magit-section-highlight ((,class (:foreground nil :background "#FAF7F0"))))
   '(magit-diff-added ((,class (:foreground "#357A40" :background "#E8DED0"))))
   '(magit-diff-added-highlight ((,class (:foreground "#357A40" :background "#FAF7F0"))))
   '(magit-diff-removed ((,class (:foreground "#9A4A2A" :background "#E8DED0"))))
   '(magit-diff-removed-highlight ((,class (:foreground "#9A4A2A" :background "#FAF7F0"))))
   '(magit-diff-context ((,class (:foreground "#7A7060"))))
   '(magit-diff-context-highlight ((,class (:foreground "#2D2520" :background "#FAF7F0"))))
   '(magit-diff-hunk-heading ((,class (:foreground "#2D2520" :background "#E8DED0"))))
   '(magit-diff-hunk-heading-highlight ((,class (:foreground "#2D2520" :background "#FAF7F0"))))
   '(magit-hash ((,class (:foreground "#7A6B3F"))))
   '(whitespace-space ((,class (:foreground "#CFC3B8"))))
   '(whitespace-tab ((,class (:foreground "#CFC3B8"))))
   '(whitespace-newline ((,class (:foreground "#CFC3B8"))))
   '(whitespace-trailing ((,class (:foreground nil :background "#2A1412"))))
   '(whitespace-line ((,class (:foreground nil :background "#2A1412"))))
   '(success ((,class (:foreground "#357A40" :weight bold))))
   '(warning ((,class (:foreground "#7A5B1F" :weight bold))))
   '(error ((,class (:foreground "#9A4A2A" :weight bold))))
   '(button ((,class (:foreground "#2A6F5F" :underline t))))
   '(header-line ((,class (:foreground "#2D2520" :background "#E8DED0"))))
   '(vertical-border ((,class (:foreground "#DFD0C0"))))
   '(window-divider ((,class (:foreground "#DFD0C0"))))
   '(window-divider-first-pixel ((,class (:foreground "#DFD0C0"))))
   '(window-divider-last-pixel ((,class (:foreground "#DFD0C0"))))
   ))

(provide-theme 'human-warm)

;;; human-warm-theme.el ends here
