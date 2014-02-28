(defcustom ede-disabled-modes-list '(org-mode dired-mode)
  "* List of modes disabled when global ede mode is on"
  :type '(repeat (sexp :tag "Major mode"))
  :tag " Major modes where ede is disabled: "
  :group 'ede
  )

(defun ede-on ()
  "* When ede is running globally, disable ede in modes defined in `ede-disabled-modes-list'. Changed by ede-off"

  (unless (or (minibufferp) (member major-mode ede-disabled-modes-list))
    (ede-minor-mode 1)))

(provide 'ede-off)
