;; install auto-complete-clang

(add-to-list 'load-path "~/.emacs.d/auto-complete-clang")
(require 'auto-complete-clang)

(defun ac-cc-mode-clang-setup ()
  (setq ac-clang-flags
	(mapcar (lambda (item)(concat "-I" item))
		(split-string "/usr/include/c++/4.8.0
/usr/include/c++/4.8.0/x86_64-unknown-linux-gnu
/usr/include/c++/4.8.0/backward
/usr/lib/gcc/x86_64-unknown-linux-gnu/4.8.0/include
/usr/local/include
/usr/lib/gcc/x86_64-unknown-linux-gnu/4.8.0/include-fixed
/usr/include")))
  (setq ac-sources (append '(ac-source-clang) ac-sources)))

(add-hook 'c-mode-common-hook 'ac-cc-mode-clang-setup)
(add-hook 'c++-mode-common-hook 'ac-cc-mode-clang-setup)
