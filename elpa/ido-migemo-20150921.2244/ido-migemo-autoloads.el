;;; ido-migemo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ido-migemo" "ido-migemo.el" (0 0 0 0))
;;; Generated autoloads from ido-migemo.el

(defvar ido-migemo-mode nil "\
Non-nil if Ido-Migemo mode is enabled.
See the `ido-migemo-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-migemo-mode'.")

(custom-autoload 'ido-migemo-mode "ido-migemo" nil)

(autoload 'ido-migemo-mode "ido-migemo" "\
`ido-migemo-mode' is minor mode for Japanese increment search using  `migemo'.
this command toggles the mode. Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ido-migemo" '("ido-migemo-" "turn-o")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ido-migemo-autoloads.el ends here
