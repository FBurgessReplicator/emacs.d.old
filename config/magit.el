;; install magit

(add-to-list 'load-path "~/.emacs.d/magit")

(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list "~/.emacs.d/magit")))

(require 'magit)
