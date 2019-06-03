;;; Package --- Summary
;; S式で文章書いてorg-modeのアウトラインに展開できます。レポートの草稿書いたりするのに使えるかもしれません。かもしれません。(試してない)

;;; Commentary:
;; brackuroyanがたまに書く括弧まみれの謎文が、読みやすさはともかくとても書きやすそうだったので10分くらいで作りました

;;; Code:
(eval-when-compile (require 'cl))
(defvar royan:eol-regexp "  ")

(defsubst royan:format-leaf (elem &optional depth)
  (let ((res ""))
	(if depth
		(loop repeat depth
			  do
			  (setq res (concat res "*"))))
	;; (setq res (concat res (format " %s\n" elem))))
	(let ((formatted-elem (replace-regexp-in-string royan:eol-regexp "\n" (format "%s" elem))))
	  (setq res (concat res (format " %s\n" formatted-elem))))
	))

(royan:format-leaf '(foo\ \ bar)) ; => " (foo\nbar)\n"

(defun royan:format (s depth)
  (let ((res ""))
	(loop for elem in s
		  do
		  (cond
		   ((listp elem)
			(setq res (concat res (royan:format elem (+ 1 depth)))))
		   (t
			(setq res (concat res (royan:format-leaf elem depth))))
		   ))
	res))

(royan:format '(foo bar(baz)(kill (me(ba\ \ by)nnn))) 1) ; => "* foo\n* bar\n** baz\n** kill\n*** me\n**** ba\nby\n*** nnn\n"

(defmacro royan (&rest args)
  "(royan foo bar(baz)(kill (me(baby)))) ; => 
\n* foo\n* bar\n** baz\n** kill\n*** me\n**** baby\n
みたいに展開されます。
改行は\\ \\ で行います。(royan:eol-regexpの値を変更すればカスタマイズ可能です)"
  (cond
   ((null args)
	(error "no expression"))
   (t
	(progn
	  (royan:format args 1)))
   ))

(defmacro royan:to-string (&rest args)
  `(insert (royan ,@args)))
(defun royan:compile-at-point ()
  "royanの展開結果をorg-modeの新規バッファに表示します"
  (interactive)
  (let ((expression (sexp-at-point))
		(orgbuf (generate-new-buffer "*royan*")))
	(if (equal (car expression) 'royan)
		(progn
		  (with-current-buffer orgbuf
			(insert (eval expression))
			(org-mode))
		  (display-buffer orgbuf))
	  (error "sexp at point is not royan expression")
	  )))

(provide 'royan)
;;; royan.el ends here
