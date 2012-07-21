(require 'js)

(defconst idoljs-keyword-re
  (js--regexp-opt-symbol
   '("def" "object" "override" "js" "as"))
  "Regexp matching any idoljs keyword.")

(defconst idoljs-font-lock-keywords-1
  (append js--font-lock-keywords-3
    (list
      (list idoljs-keyword-re 1 font-lock-keyword-face)
    )
  )
  "additional keywords"
)

(defconst idoljs-font-lock-keywords
  '(
      js--font-lock-keywords-3
      js--font-lock-keywords-1
      js--font-lock-keywords-2
      js--font-lock-keywords-3
      idoljs-font-lock-keywords-1
  )
  "Font lock keywords for 'idoljs-mode'.  See 'font-lock-keywords'.")

;;;###autoload
(define-derived-mode idoljs-mode js-mode "Idoljs"
  "Major mode for editing idoljs"

  (set (make-local-variable 'font-lock-defaults) (list idoljs-font-lock-keywords))
  (setq mode-name "idoljs")
)

(provide 'idoljs-mode)
