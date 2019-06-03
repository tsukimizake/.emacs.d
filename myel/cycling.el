
;;; package --- Summary
;; Let's work out! As you're an emacs user, you may want to use emacs as a pace maker.

;;; Commentary:

;;; Code:
(require 'cl-lib)
(require 'deferred)
(defun cycling (pace minute)
  "Timer for cycling.  Beep `PACE' per second for `MINUTE'."
  (interactive)
  (setq lexical-binding t)
  (let ((default-color (background-color-at-point))
	(max (/ (* 60 minute) pace)))
    (cl-loop for i from 0 to max
	     do
	     (sleep-for pace)
	     (beep)
	     (cycling-change-color (/ i max)))
    (set-background-color default-color)))


(defun cycling-change-color (ratio)
  (if (not (<= 0 ratio 1))
      (error "index out of range on `cycling-change-color'."))
  (lexical-let ((n (floor (* 15 ratio))))
    
    (deferred:$
      (deferred:next
    	(lambda ()
    	  (set-background-color
	   (format "#%x%x00%x%x"
		   n n
		   (- 15 n) (- 15 n))))))
    ))
;; (cycling-change-color 0.1)
;; (set-background-color "000000")
(provide 'cycling)
;;; cycling.el ends here

