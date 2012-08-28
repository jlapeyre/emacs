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

(require 'clojurescript-mode)
(add-hook 'clojurescript-mode-hook
          (lambda ()
            (setq inferior-lisp-program "lein trampoline cljsbuild repl-rhino")))

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
; (require 'fill-column-indicator)
; (add-hook 'scala-mode-hook 'fci-mode)
; (add-hook 'idoljs-mode-hook 'fci-mode)
; (add-hook 'clojure-mode-hook 'fci-mode)

(add-hook 'clojure-mode-hook
          '(lambda () (highlight-lines-matching-regexp
                       "................................................................................."
                       "hi-green-b")))

; paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)
  (mapc (lambda (mode)
    (let ((hook (intern (concat (symbol-name mode) "-mode-hook"))))
     (add-hook hook (lambda () (paredit-mode 1)))))
    '(emacs-lisp lisp inferior-lisp slime slime-repl clojure))

; yasnippets
(require 'yasnippet)
(yas/global-mode 1)
(yas/load-directory "~/.emacs.d/snippets")

; smart-tab
(require 'smart-tab)
(global-smart-tab-mode 1)
(setq smart-tab-using-hippie-expand nil)
(setq smart-tab-completion-functions-alist
  '((emacs-lisp-mode . lisp-complete-symbol)
    (text-mode . dabbrev-completion)
    (clojure-mode . slime-complete-symbol)))

(defun yas-or-smart-tab ()
  (interactive)
  (let ((yas/fallback-behavior 'return-nil))
    (unless (yas/expand)
      (smart-tab))))

(define-key smart-tab-mode-map [remap smart-tab] 'yas-or-smart-tab)
