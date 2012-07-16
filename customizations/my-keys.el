; open file
(global-set-key (kbd "C-ö") 'find-file)

; window switching
(global-set-key (kbd "M-ß") 'other-window)

; close window
(global-set-key (kbd "M-ä") (lambda ()
  (interactive)
  (kill-buffer (current-buffer)
)))

; save buffer
(global-set-key (kbd "C-ü") 'save-buffer)

; paste
; (global-set-key (kbd "M-v") 'yank)

; undo
(global-set-key (kbd "M-z") 'undo)

; Key bindings
; optimized for the neo layout

; Motion
;(global-set-key (kbd "C-n") 'backward-char)
;(global-set-key (kbd "C-r") 'next-line)
;(global-set-key (kbd "C-t") 'previous-line)
;(global-set-key (kbd "C-d") 'forward-char)
;(global-set-key (kbd "C-s") 'back-to-indentation)
;(global-set-key (kbd "C-y") 'move-end-of-line)

;(global-set-key (kbd "M-d") 'forward-word)
;(global-set-key (kbd "M-n") 'backward-word)
;(global-set-key (kbd "M-r") 'forward-sentence)
;(global-set-key (kbd "M-t") 'backward-sentence)
;(global-set-key (kbd "M-s") 'backward-paragraph)
;(global-set-key (kbd "M-y") 'forward-paragraph)

;(global-set-key (kbd "M-C-n") 'backward-sexp) ; default forward list
;(global-set-key (kbd "M-C-d") 'forward-sexp) ; default backward list
;(global-set-key (kbd "M-C-r") 'down-list)
;(global-set-key (kbd "M-C-t") 'backward-up-list)

; Transpose
;(global-set-key (kbd "C-p") 'transpose-chars)
;(global-set-key (kbd "M-p") 'transpose-words)
;(global-set-key (kbd "M-C-p") 'transpose-lines)

; Search
;(global-set-key (kbd "C-f") 'isearch-forward)
;(global-set-key (kbd "C-b") 'isearch-backward)
;(global-set-key (kbd "M-C-f") 'isearch-forward-regex)
;(global-set-key (kbd "M-C-b") 'isearch-backward-regex)

; Delete (Eliminate)
;(global-set-key (kbd "C-e") 'delete-char)
;(global-set-key (kbd "M-e") 'kill-word)
;(global-set-key (kbd "M-C-e") 'kill-whole-line)

; Yank
;(global-set-key (kbd "C-k") 'yank)
;(global-set-key (kbd "M-k") 'yank-pop)
