;; install org-mode

(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/org-mode/contrib/lisp")

(add-hook 'org-mode-hook 'turn-on-font-lock)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(custom-set-variables '(org-startup-indented t)
                      '(org-indent-indentation-per-level 4))

(add-hook 'org-mode-hook '(lambda ()
                            (set (make-local-variable 'semantic-mode) nil))
                            (global-ede-mode 0)
                            (global-linum-mode 0))

