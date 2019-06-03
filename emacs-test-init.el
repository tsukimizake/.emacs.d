
;;; Code:
(global-set-key (kbd "C-h") 'delete-backward-char)
(tool-bar-mode -1)
(setq debug-on-error t)
(add-to-list 'exec-path "/Users/shomasd/.emacs.d/myel/DCD")
(defvar ac-dcd-flags)
(add-to-list 'ac-dcd-flags "-I/usr/local/Cellar/dmd/2.065.0/import")
(provide 'emacs-test-init)
;;; emacs-test-init.el ends here
