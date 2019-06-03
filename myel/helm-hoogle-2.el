;;; helm-hoogle-2.el --- Yet another helm interface for Hoogle

;; Copyright (C) 2013 John Wiegley

;; Author: Shojin Masuda <shomasd@gmail.com>
;; Created: 31 Dec 2015
;; Version: 1.0
;; Keywords: haskell programming hoogle
;; X-URL: 
;; Package-Requires: ((helm "1.6.2") (emacs "24.4"))

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; cabal install hoogle, then run M-x helm-hoogle-2

(require 'helm)

(defgroup helm-hoogle-2 nil
  "Yet another helm interface for Hoogle"
  :group 'helm)

(defconst helm-hoogle-2--candidate-pattern
  (rx (submatch (*? nonl)) " -- " (submatch (*? nonl))))

(setq helm-c-source-hoogle-2
  '((name . "Hoogle2")
    (candidates . helm-hoogle-2--get-candidates)
    (action ("message" . message)
	    ("Lookup Entry" . helm-hoogle-2--browse))))

(defun helm-hoogle-2--reformat-candidates ()
  "helper function for ...--init."
  (goto-char (point-min))
  (let ((res))
    (while (re-search-forward helm-hoogle-2--candidate-pattern nil t)
      (let ((str (match-string 1))
	    (path (match-string 2)))
	(push (cons str path) res)
	))
    res))

(defun helm-hoogle-2--get-candidates ()
  (let* ((query (read-string "hoogle:"))
	 (buf (helm-candidate-buffer 'global)))
    (with-current-buffer buf
      (erase-buffer)
      (call-process "hoogle" nil buf nil "-l" query)
      (helm-hoogle-2--reformat-candidates))
    ))

(defun helm-hoogle-2--browse ()
  )

;;;###autoload
(defun helm-hoogle-2 ()
  (interactive)
  (helm :sources 'helm-c-source-hoogle-2
        :prompt "Hoogle: "
        :buffer "*Hoogle search*"))

(provide 'helm-hoogle-2)

;;; helm-hoogle-2.el ends here
