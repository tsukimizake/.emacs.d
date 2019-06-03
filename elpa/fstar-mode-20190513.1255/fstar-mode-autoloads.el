;;; fstar-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fstar-mode" "fstar-mode.el" (0 0 0 0))
;;; Generated autoloads from fstar-mode.el

(put 'fstar-comment-style 'safe-local-variable #'symbolp)

(autoload 'fstar-debug-invocation "fstar-mode" "\
Compute F*'s arguments from `argv' and visit the corresponding file.

This is useful to quickly debug a failing invocation: just prefix
the whole command line with `emacs -f fstar-debug-invocation'.

\(fn)" nil nil)

(autoload 'fstar-mode "fstar-mode" "\


\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.fsti?\\'" . fstar-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fstar-mode" '("flycheck-fstar-executable" "fstar-")))

;;;***

;;;### (autoloads nil nil ("fstar-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fstar-mode-autoloads.el ends here
