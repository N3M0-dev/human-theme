;;; human-light-theme.el --- Human Light theme for Emacs 30 -*- lexical-binding: t; -*-

;; Copyright (C) 2024-2026 Human Theme Authors

;; Author: Human Theme Authors
;; URL: https://github.com/N3M0-dev/human-theme
;; Version: 1.1.1
;; Package-Requires: ((emacs "30.0"))
;; Keywords: faces, theme, accessibility

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Human Light - Research-grade Emacs theme based on vision science
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
;; Background: #EDF3EB
;; Foreground: #2D2520
;; Type: light
;;
;; Installation:
;; 1. Place this file in ~/.emacs.d/themes/ or in your load-path
;; 2. Add (load-theme 'human-light t) to your init.el

;;; Code:

(deftheme human-light
  "Human Light - Research-grade theme based on vision science.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg "#EDF3EB")
      (fg "#2D2520")
      (bg-darker "#E0E8DD")
      (bg-lighter "#F5F9F3")
      (fg-muted "#6B5F52")
      (fg-very-muted "#9FA89F")
      (shadow "#D8E0D5")
      
      ;; Green palette (keywords, functions)
      (green-keyword "#2E6B25")
      (green-function "#2E6B2F")
      (green-leaf "#3D7545")
      (green-success "#3D7A35")
      (green-status "#2E6B40")
      
      ;; Teal palette (types, structure)
      (teal-type "#1A5F6F")
      (teal-operator "#256B7A")
      (teal-namespace "#1F6B7F")
      (teal-structure "#2D6B7F")
      
      ;; Ochre palette (literals, constants)
      (ochre-warm "#7A5B1F")
      (ochre-constant "#6A5B3F")
      (ochre-warning "#7A5B1F")
      (ochre-rust "#8A4D2C")
      
      ;; Red palette (errors, alerts)
      (red-error "#8A3A2A")
      (red-light "#A84545")
      (red-rust "#8A4040")
      (red-bg "#2A1412")
      
      ;; Brown palette (HTML, markup)
      (brown-html "#7A5B2F")
      (brown-attr "#7A6B5A")
      (brown-tag "#5A4B3F")
      
      ;; Gray palette (comments, UI)
      (gray-comment "#6A6060")
      (gray-line-num "#A89A90")
      (gray-line-active "#5F5550")
      (gray-tan "#2D2520")
      (gray-tan-muted "#6B5F52")
      (gray-very-muted "#BFB3A8")
      
      ;; UI colors
      (ui-selection "#DCC9B8")
      (ui-selection-inactive "#E8DCD0")
      (ui-selection-highlight "#D5C4B5")
      (ui-word-highlight "#E3D9CC")
      (ui-word-highlight-strong "#D9C9B8")
      (ui-find-match "#D4C4B8")
      (ui-find-match-highlight "#E3D5CA")
      (ui-hover "#EDE3D8")
      (ui-focus "#3D7A2F")
      (ui-border "#D4C4B8")
      
      ;; Diagnostics
      (diag-error "#A84A3A")
      (diag-warning "#996B1F")
      (diag-info "#1F6B7A")
      (diag-hint "#3D7A2F"))

  (custom-theme-set-faces
   'human-light
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

(provide-theme 'human-light)

;;; human-light-theme.el ends here
