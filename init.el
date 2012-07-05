(require 'cl)

; Marmalade package manager
(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

; Add directory to the load path
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/customizations")

(load-file "~/.emacs.d/load-directory.el")

(add-to-list 'load-path "~/.emacs.d/vendor/scala")

(mapcar 'load-directory '("~/.emacs.d/customizations"))
