; Git
(require 'magit)
(autoload 'magit-status "magit" nil t)
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

; JavaScript
(autoload 'js-mode "js" nil t)
(setq js-indent-level 2)
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
; JSON
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

; Idoljs
(autoload 'idoljs-mode "idoljs-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.idoljs$" . idoljs-mode))

; Less
(require 'less-css-mode)
;(autoload 'less-css-mode "LESS" nil t)
;(add-to-list 'auto-mode-alist '("\\.less$" . less-css-mode))

; soy
(require 'closure-template-html-mode)
;(autoload 'closure-template-html-mode "closure-template-html" nil t)
(add-to-list 'auto-mode-alist '("\\.soy$" . closure-template-html-mode))

; TextMate
(require 'textmate)
(textmate-mode t)

; Ack
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)
(setq ack-executable (executable-find "ack-grep"))

; Scala
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
; ENSIME for scala
(add-to-list 'load-path "~/.emacs.d/vendor/ensime_2.9.2-RC1-0.9.3.RC4/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

; Markdown
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mkd$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

; Enable fill column indicator
(require 'fill-column-indicator)
(add-hook 'scala-mode-hook 'fci-mode)
(add-hook 'idoljs-mode-hook 'fci-mode)

; smart-tab
(require 'smart-tab)
(global-smart-tab-mode 1)
(setq smart-tab-using-hippie-expand nil)
(setq smart-tab-completion-functions-alist
  '((emacs-lisp-mode . lisp-complete-symbol)
    (text-mode . dabbrev-completion)))
