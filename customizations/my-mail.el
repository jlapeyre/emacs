(require 'mu4e)

 ;; default
;; (setq mu4e-maildir (expand-file-name "~/Maildir"))

(setq mu4e-drafts-folder "/[Google Mail].Drafts")
(setq mu4e-sent-folder   "/[Google Mail].Sent Mail")
(setq mu4e-trash-folder  "/[Google Mail].Trash")

;; don't save message to Sent Messages, Gmail/IMAP will take care of this
(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
(setq mu4e-maildir-shortcuts
    '( ("/INBOX"               . ?i)
       ("/[Google Mail].Sent Mail"   . ?s)
       ("/[Google Mail].Trash"       . ?t)
       ("/[Google Mail].All Mail"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

(setq mu4e-update-interval (* 60 5))

;; something about ourselves
(setq
   user-mail-address "je.haase@gmail.com"
   user-full-name  "Jens Haase"
   message-signature
    (concat
      "Gruß\n"
      "Jens Haase\n"
      "http://about.me/jenshaase\n"))

(setq message-send-mail-function 'smtpmail-send-it
     smtpmail-stream-type 'starttls
     smtpmail-auth-credentials (expand-file-name "~/.authinfo")
     smtpmail-default-smtp-server "smtp.gmail.com"
     smtpmail-smtp-server "smtp.gmail.com"
     smtpmail-smtp-service 587)
     
(require 'smtpmail)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)
