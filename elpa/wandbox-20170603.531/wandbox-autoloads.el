;;; wandbox-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "wandbox" "wandbox.el" (22835 29934 0 0))
;;; Generated autoloads from wandbox.el

(autoload 'wandbox-add-server "wandbox" "\
Register wandbox server LOCATION as named NAME.

\(fn NAME LOCATION)" nil nil)

(autoload 'wandbox-compile "wandbox" "\
Compile CODE as COMPILER's program code on Wandbox.

URL `https://wandbox.org' is online compiler service
for multi programming language (C/C++, Python, PHP, Common Lisp, etc).

Options:

* LANG is language name. (e.g. \"Ruby\")
* NAME is select compiler template from `wandbox-user-profiles' or default compiler settings.
* FILE is file contents instead of CODE.
* SYNC is synchronous mode. (debug)
* SERVER-NAME is server name. (default `wandbox-default-server-name')

List of available server values, see `wandbox-list-compilers'.

\(fn &rest PROFILE &key COMPILER OPTIONS CODE STDIN COMPILER-OPTION RUNTIME-OPTION LANG NAME FILE (PROFILES []) (SAVE nil) (SYNC nil) (SERVER-NAME wandbox-default-server-name) &allow-other-keys)" nil nil)

(autoload 'wandbox-compile-file "wandbox" "\
Compile FILENAME contents.
Compiler profile is determined by file extension.

\(fn FILENAME)" t nil)

(autoload 'wandbox-compile-region "wandbox" "\
Compile specified region (FROM TO).

\(fn FROM TO)" t nil)

(autoload 'wandbox-compile-buffer "wandbox" "\
Compile current buffer.

\(fn)" t nil)

(autoload 'wandbox "wandbox" "\
Run wandbox.

\(fn &rest ARGS)" t nil)

(autoload 'wandbox-eval-with "wandbox" "\
Evaluate FORM as S-expression.

\(fn (&rest OPTIONS) &body FORM)" nil t)

(function-put 'wandbox-eval-with 'lisp-indent-function '1)

(autoload 'wandbox-eval-last-sexp "wandbox" "\
Evaluate last S-expression at point.

\(fn)" t nil)

(autoload 'wandbox-select-server "wandbox" "\
Switch to selected NAME wandbox server.

\(fn NAME)" t nil)

(autoload 'wandbox-list-compilers "wandbox" "\
Display compilers list.

\(fn &optional POPUP)" t nil)

(autoload 'wandbox-insert-template "wandbox" "\
Insert template snippet named NAME.

\(fn NAME)" t nil)

(autoload 'wandbox-customize "wandbox" "\
Customize wandbox variablis.

\(fn &optional OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads nil nil ("tls-patch.el" "wandbox-pkg.el") (22835
;;;;;;  29934 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; wandbox-autoloads.el ends here
