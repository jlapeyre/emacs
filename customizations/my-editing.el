; tabs and indentation
(setq standart-indent 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

; line numbering
(global-linum-mode t)

; highlight URLs in comments/strings
(add-hook 'find-file-hooks 'goto-address-prog-mode)

; highlight matching parens
(show-paren-mode t)

; wrap lines in a tasteful way
; (global-visiual-line-mode 1)
