(require 'color-theme)
(require 'color-theme-solarized)

(setq my-color-themes (list 'color-theme-solarized-dark 'color-theme-solarized-light))

(defun my-theme-set-default ()
  (interactive)
  (setq theme-current my-color-themes)
  (funcall (car theme-current)))

(defun my-describe-theme () ; Show the current theme
  (interactive)
  (message "%s" (car theme-current)))

(defun my-theme-cycle ()
  (interactive)
  (setq theme-current (cdr theme-current))
  (if (null theme-current)
      (setq theme-current my-color-themes))
  (funcall (car theme-current))
  (message "%S" (car theme-current)))

(setq theme-current my-color-themes)
(setq color-theme-is-global nil) ; Initialization
(my-theme-set-default)
(global-set-key (kbd "C-c t") 'my-theme-cycle)

; font
;(set-face-attribute 'default nil :height 105)
; (set-default-font "Monospace-10")
(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")
