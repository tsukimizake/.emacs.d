;;; play-routes-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "play-routes-mode" "play-routes-mode.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from play-routes-mode.el

(autoload 'play-routes-mode "play-routes-mode" "\
Major mode for Play Framework routes files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/routes\\'" . play-routes-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "play-routes-mode" '("play-routes-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; play-routes-mode-autoloads.el ends here
