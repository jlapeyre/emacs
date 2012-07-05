; don' display startup message
(setq inhibit-startup-message t)

; no scollbar
(scroll-bar-mode -1)

; no toolbar
(tool-bar-mode -1)

; blick cursor
(blink-cursor-mode t)

; highlight current line
(global-hl-line-mode t)

; no bell
(setq ring-bell-function 'ignore)

; smooth scrolling
(setq scroll-conservatively 10000
  scroll-step 1)
