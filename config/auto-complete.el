;; install auto-complete

(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete-1.3.1/ac-dict")
(global-auto-complete-mode t)
(setq ac-auto-start nil)
(setq ac-expand-on-auto-complete nil)
(ac-set-trigger-key "TAB")
