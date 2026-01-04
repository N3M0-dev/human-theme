;;; human-theme-example-config.el --- Example configuration for Human Theme

;; This file provides example configurations for using Human Theme in Emacs.

;;; Commentary:

;; Copy the relevant sections to your init.el or .emacs file.

;;; Code:

;; ============================================================================
;; Basic Installation
;; ============================================================================

;; Add the themes directory to the custom theme load path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Load Human Dark theme
(load-theme 'human-dark t)

;; ============================================================================
;; Theme Switching Functions
;; ============================================================================

;; Define a function to switch between Human themes easily
(defun human-theme-switch (theme-name)
  "Switch to a Human THEME-NAME after disabling all current themes."
  (interactive
   (list (intern (completing-read "Choose Human theme: "
                                  '(human-dark
                                    human-light
                                    human-low-light
                                    human-soft
                                    human-warm
                                    human-high-contrast)))))
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme theme-name t))

;; Bind to a key (optional)
;; (global-set-key (kbd "C-c t") 'human-theme-switch)

;; ============================================================================
;; Auto Theme Switching Based on Time
;; ============================================================================

;; Automatically switch themes based on time of day
(defun human-theme-auto-switch ()
  "Automatically switch between Human themes based on time of day."
  (let ((hour (string-to-number (format-time-string "%H"))))
    (cond
     ;; Late night (20:00 - 06:00): Low Light theme for reduced blue light
     ((or (>= hour 20) (< hour 6))
      (human-theme-switch 'human-low-light))
     ;; Morning (06:00 - 12:00): Light theme
     ((and (>= hour 6) (< hour 12))
      (human-theme-switch 'human-light))
     ;; Afternoon (12:00 - 17:00): Soft theme for extended viewing
     ((and (>= hour 12) (< hour 17))
      (human-theme-switch 'human-soft))
     ;; Evening (17:00 - 20:00): Dark theme
     (t
      (human-theme-switch 'human-dark)))))

;; Run on startup (optional)
;; (human-theme-auto-switch)

;; Set up timer to check every hour (optional)
;; (run-at-time "1 hour" 3600 'human-theme-auto-switch)

;; ============================================================================
;; Toggle Between Dark and Light
;; ============================================================================

(defvar human-theme-current-mode 'dark
  "Current theme mode: 'dark or 'light.")

(defun human-theme-toggle-mode ()
  "Toggle between dark and light Human themes."
  (interactive)
  (if (eq human-theme-current-mode 'dark)
      (progn
        (human-theme-switch 'human-light)
        (setq human-theme-current-mode 'light)
        (message "Switched to Human Light theme"))
    (human-theme-switch 'human-dark)
    (setq human-theme-current-mode 'dark)
    (message "Switched to Human Dark theme")))

;; Bind to a key (optional)
;; (global-set-key (kbd "C-c C-t") 'human-theme-toggle-mode)

;; ============================================================================
;; Integration with circadian.el (optional package)
;; ============================================================================

;; If you use the circadian package for automatic theme switching:
;; (use-package circadian
;;   :ensure t
;;   :config
;;   (setq circadian-themes '(("8:00"  . human-light)
;;                            ("12:00" . human-soft)
;;                            ("17:00" . human-dark)
;;                            ("20:00" . human-low-light)))
;;   (circadian-setup))

;; ============================================================================
;; System Theme Sync (macOS/Linux)
;; ============================================================================

;; Sync with system dark mode (requires Emacs 29+)
;; (when (fboundp 'auto-dark-mode)
;;   (setq auto-dark-mode-dark-theme 'human-dark)
;;   (setq auto-dark-mode-light-theme 'human-light)
;;   (auto-dark-mode t))

;; ============================================================================
;; Enhanced Line Numbers (Emacs 26+)
;; ============================================================================

;; Enable line numbers with Human theme colors
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;; ============================================================================
;; Recommended Settings for Best Visual Experience
;; ============================================================================

;; Disable toolbar and menu bar for minimal UI
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Disable scroll bar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Enable visual line mode for better reading
(global-visual-line-mode t)

;; Show matching parentheses
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Better default font (adjust to your preference)
;; (set-face-attribute 'default nil :font "JetBrains Mono-12")

;; Enable smooth scrolling
(setq scroll-margin 3
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; ============================================================================
;; Optional: Theme-specific Customizations
;; ============================================================================

;; Customize specific faces after theme load (if needed)
;; (custom-theme-set-faces
;;  'human-dark
;;  '(mode-line ((t (:height 0.95)))) ; Slightly smaller mode line
;;  '(mode-line-inactive ((t (:height 0.95)))))

;;; human-theme-example-config.el ends here
