;;; hippie-expand-haskell-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "hippie-expand-haskell" "hippie-expand-haskell.el"
;;;;;;  (21682 27306 0 0))
;;; Generated autoloads from hippie-expand-haskell.el

(autoload 'try-expand-haskell "hippie-expand-haskell" "\
Try function for `hippie-expand' using ghc's completion function.

\(fn OLD)" nil nil)

(autoload 'set-up-haskell-hippie-expand "hippie-expand-haskell" "\
Use `ghc-select-completion-symbol' as a hippie expand try function.
Will add `try-expand-haskell' to the front of `hippie-expand-try-functions-list'

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; hippie-expand-haskell-autoloads.el ends here
