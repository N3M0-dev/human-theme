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
   '(default ((,class (:foreground "#2D2520" :background "#EDF3EB"))))
   '(cursor ((,class (:foreground nil :background "#2E6B25"))))
   '(region ((,class (:foreground nil :background "#DCC9B8"))))
   '(highlight ((,class (:foreground nil :background "#E3D9CC"))))
   '(hl-line ((,class (:foreground nil :background "#F5F9F3"))))
   '(fringe ((,class (:foreground "#A89A90" :background "#EDF3EB"))))
   '(shadow ((,class (:foreground "#6A6060"))))
   '(secondary-selection ((,class (:foreground nil :background "#E8DCD0"))))
   '(trailing-whitespace ((,class (:foreground nil :background "#2A1412"))))
   '(font-lock-builtin-face ((,class (:foreground "#1A5F6F"))))
   '(font-lock-comment-delimiter-face ((,class (:foreground "#6A6060"))))
   '(font-lock-comment-face ((,class (:foreground "#6A6060" :slant italic))))
   '(font-lock-constant-face ((,class (:foreground "#6A5B3F"))))
   '(font-lock-doc-face ((,class (:foreground "#6A6060" :slant italic))))
   '(font-lock-function-name-face ((,class (:foreground "#2E6B2F" :weight bold))))
   '(font-lock-keyword-face ((,class (:foreground "#2E6B25" :weight bold))))
   '(font-lock-negation-char-face ((,class (:foreground "#8A3A2A"))))
   '(font-lock-preprocessor-face ((,class (:foreground "#256B7A"))))
   '(font-lock-regexp-grouping-backslash ((,class (:foreground "#7A5B1F"))))
   '(font-lock-regexp-grouping-construct ((,class (:foreground "#7A5B1F"))))
   '(font-lock-string-face ((,class (:foreground "#7A5B1F"))))
   '(font-lock-type-face ((,class (:foreground "#1A5F6F" :weight bold))))
   '(font-lock-variable-name-face ((,class (:foreground "#2D2520"))))
   '(font-lock-warning-face ((,class (:foreground "#7A5B1F" :weight bold))))
   '(mode-line ((,class (:foreground "#2D2520" :background "#F5F9F3" :box (:line-width 1 :color "#D4C4B8")))))
   '(mode-line-inactive ((,class (:foreground "#6A6060" :background "#E0E8DD" :box (:line-width 1 :color "#D4C4B8")))))
   '(mode-line-buffer-id ((,class (:foreground "#2E6B25" :weight bold))))
   '(mode-line-emphasis ((,class (:foreground "#2E6B2F" :weight bold))))
   '(mode-line-highlight ((,class (:foreground nil :background "#EDE3D8"))))
   '(line-number ((,class (:foreground "#A89A90" :background "#EDF3EB"))))
   '(line-number-current-line ((,class (:foreground "#5F5550" :background "#F5F9F3" :weight bold))))
   '(isearch ((,class (:foreground "#EDF3EB" :background "#D4C4B8" :weight bold))))
   '(isearch-fail ((,class (:foreground "#8A3A2A" :weight bold))))
   '(lazy-highlight ((,class (:foreground nil :background "#E3D5CA"))))
   '(match ((,class (:foreground nil :background "#E3D9CC"))))
   '(show-paren-match ((,class (:foreground nil :background "#D9C9B8" :weight bold))))
   '(show-paren-mismatch ((,class (:foreground "#8A3A2A" :background "#2A1412" :weight bold))))
   '(link ((,class (:foreground "#1A5F6F" :underline t))))
   '(link-visited ((,class (:foreground "#256B7A" :underline t))))
   '(minibuffer-prompt ((,class (:foreground "#2E6B25" :weight bold))))
   '(compilation-info ((,class (:foreground "#2E6B2F"))))
   '(compilation-warning ((,class (:foreground "#7A5B1F" :weight bold))))
   '(compilation-error ((,class (:foreground "#8A3A2A" :weight bold))))
   '(dired-directory ((,class (:foreground "#1A5F6F" :weight bold))))
   '(dired-flagged ((,class (:foreground "#8A3A2A" :weight bold))))
   '(dired-header ((,class (:foreground "#2E6B25" :weight bold))))
   '(dired-mark ((,class (:foreground "#2E6B2F" :weight bold))))
   '(dired-marked ((,class (:foreground "#2E6B2F" :weight bold))))
   '(dired-symlink ((,class (:foreground "#256B7A" :slant italic))))
   '(dired-warning ((,class (:foreground "#7A5B1F" :weight bold))))
   '(org-level-1 ((,class (:foreground "#2E6B25" :weight bold))))
   '(org-level-2 ((,class (:foreground "#1A5F6F" :weight bold))))
   '(org-level-3 ((,class (:foreground "#2E6B2F" :weight bold))))
   '(org-level-4 ((,class (:foreground "#256B7A" :weight bold))))
   '(org-level-5 ((,class (:foreground "#7A5B1F" :weight bold))))
   '(org-level-6 ((,class (:foreground "#7A5B2F" :weight bold))))
   '(org-level-7 ((,class (:foreground "#2D2520" :weight bold))))
   '(org-level-8 ((,class (:foreground "#6B5F52" :weight bold))))
   '(org-document-title ((,class (:foreground "#2E6B25" :weight bold))))
   '(org-document-info ((,class (:foreground "#1A5F6F"))))
   '(org-document-info-keyword ((,class (:foreground "#6A6060"))))
   '(org-link ((,class (:foreground "#1A5F6F" :underline t))))
   '(org-code ((,class (:foreground "#7A5B1F"))))
   '(org-verbatim ((,class (:foreground "#6A5B3F"))))
   '(org-block ((,class (:foreground "#2D2520" :background "#E0E8DD"))))
   '(org-block-begin-line ((,class (:foreground "#6A6060" :background "#E0E8DD"))))
   '(org-block-end-line ((,class (:foreground "#6A6060" :background "#E0E8DD"))))
   '(org-todo ((,class (:foreground "#8A3A2A" :weight bold))))
   '(org-done ((,class (:foreground "#2E6B40" :weight bold))))
   '(org-headline-done ((,class (:foreground "#6A6060"))))
   '(org-date ((,class (:foreground "#256B7A" :underline t))))
   '(org-special-keyword ((,class (:foreground "#6A6060"))))
   '(org-tag ((,class (:foreground "#7A6B5A"))))
   '(markdown-header-face-1 ((,class (:foreground "#2E6B25" :weight bold))))
   '(markdown-header-face-2 ((,class (:foreground "#1A5F6F" :weight bold))))
   '(markdown-header-face-3 ((,class (:foreground "#2E6B2F" :weight bold))))
   '(markdown-header-face-4 ((,class (:foreground "#256B7A" :weight bold))))
   '(markdown-header-face-5 ((,class (:foreground "#7A5B1F" :weight bold))))
   '(markdown-header-face-6 ((,class (:foreground "#7A5B2F" :weight bold))))
   '(markdown-code-face ((,class (:foreground "#7A5B1F" :background "#E0E8DD"))))
   '(markdown-inline-code-face ((,class (:foreground "#7A5B1F"))))
   '(markdown-link-face ((,class (:foreground "#1A5F6F" :underline t))))
   '(markdown-url-face ((,class (:foreground "#256B7A" :underline t))))
   '(markdown-bold-face ((,class (:foreground nil :weight bold))))
   '(markdown-italic-face ((,class (:foreground nil :slant italic))))
   '(company-tooltip ((,class (:foreground "#2D2520" :background "#F5F9F3"))))
   '(company-tooltip-selection ((,class (:foreground nil :background "#DCC9B8"))))
   '(company-tooltip-common ((,class (:foreground "#2E6B2F" :weight bold))))
   '(company-tooltip-annotation ((,class (:foreground "#6A6060"))))
   '(company-scrollbar-bg ((,class (:foreground nil :background "#E0E8DD"))))
   '(company-scrollbar-fg ((,class (:foreground nil :background "#6A6060"))))
   '(flycheck-error ((,class (:foreground nil :underline (:color "#8A3A2A" :style line)))))
   '(flycheck-warning ((,class (:foreground nil :underline (:color "#7A5B1F" :style line)))))
   '(flycheck-info ((,class (:foreground nil :underline (:color "#1A5F6F" :style line)))))
   '(flymake-error ((,class (:foreground nil :underline (:color "#8A3A2A" :style line)))))
   '(flymake-warning ((,class (:foreground nil :underline (:color "#7A5B1F" :style line)))))
   '(flymake-note ((,class (:foreground nil :underline (:color "#1A5F6F" :style line)))))
   '(git-gutter:added ((,class (:foreground "#2E6B40"))))
   '(git-gutter:deleted ((,class (:foreground "#8A3A2A"))))
   '(git-gutter:modified ((,class (:foreground "#7A5B1F"))))
   '(magit-branch-local ((,class (:foreground "#2E6B2F" :weight bold))))
   '(magit-branch-remote ((,class (:foreground "#1A5F6F" :weight bold))))
   '(magit-tag ((,class (:foreground "#7A5B1F" :weight bold))))
   '(magit-section-heading ((,class (:foreground "#2E6B25" :weight bold))))
   '(magit-section-highlight ((,class (:foreground nil :background "#F5F9F3"))))
   '(magit-diff-added ((,class (:foreground "#2E6B40" :background "#E0E8DD"))))
   '(magit-diff-added-highlight ((,class (:foreground "#2E6B40" :background "#F5F9F3"))))
   '(magit-diff-removed ((,class (:foreground "#8A3A2A" :background "#E0E8DD"))))
   '(magit-diff-removed-highlight ((,class (:foreground "#8A3A2A" :background "#F5F9F3"))))
   '(magit-diff-context ((,class (:foreground "#6A6060"))))
   '(magit-diff-context-highlight ((,class (:foreground "#2D2520" :background "#F5F9F3"))))
   '(magit-diff-hunk-heading ((,class (:foreground "#2D2520" :background "#E0E8DD"))))
   '(magit-diff-hunk-heading-highlight ((,class (:foreground "#2D2520" :background "#F5F9F3"))))
   '(magit-hash ((,class (:foreground "#6A5B3F"))))
   '(whitespace-space ((,class (:foreground "#BFB3A8"))))
   '(whitespace-tab ((,class (:foreground "#BFB3A8"))))
   '(whitespace-newline ((,class (:foreground "#BFB3A8"))))
   '(whitespace-trailing ((,class (:foreground nil :background "#2A1412"))))
   '(whitespace-line ((,class (:foreground nil :background "#2A1412"))))
   '(success ((,class (:foreground "#2E6B40" :weight bold))))
   '(warning ((,class (:foreground "#7A5B1F" :weight bold))))
   '(error ((,class (:foreground "#8A3A2A" :weight bold))))
   '(button ((,class (:foreground "#1A5F6F" :underline t))))
   '(header-line ((,class (:foreground "#2D2520" :background "#E0E8DD"))))
   '(vertical-border ((,class (:foreground "#D4C4B8"))))
   '(window-divider ((,class (:foreground "#D4C4B8"))))
   '(window-divider-first-pixel ((,class (:foreground "#D4C4B8"))))
   '(window-divider-last-pixel ((,class (:foreground "#D4C4B8"))))
   ))

(provide-theme 'human-light)

;;; human-light-theme.el ends here
