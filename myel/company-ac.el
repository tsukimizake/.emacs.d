;;; -*- lexical-binding: t -*-
(require 'company)
(require 'cl)
(require 'cl-lib)
(defvar ac-prefix)
 
(defun company-backend-from-ac (source-alist)
  (cl-labels ((call (key &rest args)
                    (let ((fn (cdr (assoc key source-alist))))
                      (when fn
                        (apply fn args)))))
    (lambda (command &optional arg &rest ignore)
      (case command
        (prefix (and (call 'available)
                     (let ((pt (call 'prefix)))
                       (when pt
                         (buffer-substring-no-properties pt (point))))))
        (candidates (let ((ac-prefix arg)) (call 'candidates)))
        (doc-buffer (let ((str (call 'document arg)))
                      (when str
                        (with-current-buffer (company-doc-buffer)
                          (insert str)
                          (current-buffer)))))
        (duplicates t)
        (post-completion (call 'action))))))
 
;; In a clojure-mode buffer with nrepl jacked in, to try completion, eval:
 
;; (company-begin-backend (company-backend-from-ac ac-source-nrepl-vars))
 
;; Or to use all sources together (this requires company-mode 0.6.1):
 
(defun company-backend-from-ac-nrepl (symbol)
  (company-backend-from-ac
  (symbol-value (intern (format "ac-source-nrepl-%s" symbol)))))
 
;; (set (make-local-variable 'company-backends)
;;      (list (mapcar #'company-backend-from-ac-nrepl
;;                    '(ns vars ns-classes static-methods))
;;            (mapcar #'company-backend-from-ac-nrepl
;;                    '(all-classes java-methods))))
 
;; Then type M-x company-complete

(provide 'company-ac)
;;; company-ac.el ends here
