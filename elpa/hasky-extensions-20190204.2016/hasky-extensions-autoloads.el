;;; hasky-extensions-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "hasky-extensions" "hasky-extensions.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from hasky-extensions.el

(autoload 'hasky-extensions "hasky-extensions" "\
Invoke a menu for managing Haskell language extensions.

\(fn)" t nil)

(autoload 'hasky-extensions-browse-docs "hasky-extensions" "\
Browse documentation about EXTENSION from GHC user guide in browser.

\(fn EXTENSION)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hasky-extensions" '("hasky-extensions")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hasky-extensions-autoloads.el ends here
