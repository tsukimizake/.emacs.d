;;; hy-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "hy-base" "hy-base.el" (0 0 0 0))
;;; Generated autoloads from hy-base.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-base" '("hy--")))

;;;***

;;;### (autoloads nil "hy-font-lock" "hy-font-lock.el" (0 0 0 0))
;;; Generated autoloads from hy-font-lock.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-font-lock" '("inferior-hy-font-lock-kwds" "hy-font-lock-")))

;;;***

;;;### (autoloads nil "hy-mode" "hy-mode.el" (0 0 0 0))
;;; Generated autoloads from hy-mode.el

(autoload 'hy-insert-pdb "hy-mode" "\
Import and set pdb trace at point.

\(fn)" t nil)

(autoload 'hy-mode "hy-mode" "\
Major mode for editing Hy files.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-mode" '("hy-" "inferior-hy-mode-syntax-table")))

;;;***

;;;### (autoloads nil "hy-shell" "hy-shell.el" (0 0 0 0))
;;; Generated autoloads from hy-shell.el

(autoload 'inferior-hy-mode "hy-shell" "\
Major mode for Hy inferior process.

\(fn)" t nil)

(autoload 'run-hy-internal "hy-shell" "\
Startup the internal Hy interpreter process.

\(fn)" t nil)

(autoload 'run-hy "hy-shell" "\
Startup and/or switch to a Hy interpreter process.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-shell" '("hy-" "company-hy")))

;;;***

;;;### (autoloads nil nil ("hy-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hy-mode-autoloads.el ends here
