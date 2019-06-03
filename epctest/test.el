

;;; Code:
(require 'epc)
(defvar test-epc-mngr)
(setq test-epc-mngr (epc:start-epc "python3" '("test.py")))
(deferred:$
  (epc:call-deferred test-epc-mngr 'run '())
  (deferred:nextc it
	(lambda (x) (message "ret: %s" x))))


(defun return-ten ()
  (message "ret-ten called")
  "ten")

(provide 'test)
;;; test.el ends here
