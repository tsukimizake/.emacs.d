;;; stack-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "stack-mode" "stack-mode.el" (22269 61487 0
;;;;;;  0))
;;; Generated autoloads from stack-mode.el

(autoload 'stack-mode "stack-mode" "\
A minor mode enabling various features based on stack-ide.

Automatically starts and stops flycheck-mode when you
enable/disable it. It makes this assumption in the interest of
easier user experience. Disable with `stack-mode-manage-flycheck'.

\(fn &optional ARG)" t nil)

(autoload 'stack-mode-status "stack-mode" "\
Print the status of the current stack process.

\(fn)" t nil)

(autoload 'stack-mode-start "stack-mode" "\
Start an inferior process and buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("stack-fifo.el" "stack-mode-pkg.el") (22269
;;;;;;  61487 958433 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; stack-mode-autoloads.el ends here
