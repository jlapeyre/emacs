; Scala
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
; ENSIME for scala
(add-to-list 'load-path "~/.emacs.d/vendor/ensime_2.9.2-RC1-0.9.3.RC4/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


; Enable fill column indicator
(require 'fill-column-indicator)
(add-hook 'scala-mode-hook 'fci-mode)

; smart-tab
(require 'smart-tab)
(global-smart-tab-mode 1)
(setq smart-tab-using-hippie-expand nil)
(setq smart-tab-completion-functions-alist
  '((emacs-lisp-mode . lisp-complete-symbol)
    (text-mode . dabbrev-completion)))
