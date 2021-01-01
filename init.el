

;; package --- summary:
;; my init.el.
;;; Commentary:
;; nothing.
;;; Code:

(setq gc-cons-threshold (* 4 1024 1024 1024))
(setq garbage-collection-messages t)

(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/opt/llvm/bin")
(add-to-list 'exec-path (expand-file-name "~/.local/bin"))

(when (eq system-type 'darwin)
  (setq shell-file-name "/bin/zsh")
  (setenv "PATH" (concat "/Library/TeX/texbin:" (getenv "PATH")))
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (setenv "PATH" (concat "~/.local/bin:" (getenv "PATH"))))

(add-to-list 'load-path "~/.emacs.d/myel")
(require 'package)


(require 'cl-lib)
(global-auto-revert-mode t)

(define-key emacs-lisp-mode-map [f12] 'eval-buffer)
(define-key global-map (kbd "C-h") 'delete-backward-char)

;;disable commands
(setq disabled-command-function nil)
(put 'transpose-words 'disabled t)
(global-unset-key "\M-t")
;; (global-unset-key "\M-r")
(global-unset-key (kbd "C-t"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start 3)
 '(ac-candidate-limit 100)
 '(ac-dcd-executable "dcd-client")
 '(ac-dcd-flags
   (quote
    ("-I/usr/share/dmd/src/phobos" "-I/usr/share/dmd/src/druntime/import")))
 '(ac-dcd-ignore-template-argument t)
 '(ac-dcd-key-goto-def-pop-marker "C-c C-,")
 '(ac-dcd-server-executable "dcd-server")
 '(ac-delay 0.1)
 '(ac-modes (quote (qml-mode)))
 '(ac-quick-help-delay 0.1)
 '(ag-ignore-list (quote ("*.js" "*.html")))
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(c-macro-cppflags " -I/usr/local/include")
 '(clang-format-executable "clang-format")
 '(clippy-tip-show-function (quote clippy-popup-tip-show))
 '(comint-input-autoexpand (quote history))
 '(company-auto-complete nil)
 '(company-auto-complete-chars nil)
 '(company-backends
   (quote
    (company-irony company-cabal company-elisp company-files company-cmake company-robe
                   company-coq company-jedi company-dcd company-dabbrev company-capf)))
 '(company-dabbrev-downcase nil)
 '(company-dabbrev-ignore-case nil)
 '(company-ghc-hoogle-search-limit 1000)
 '(company-ghc-show-info nil)
 '(company-global-modes
   (quote
    (not org-mode remember-mode yatex-mode eshell-mode Custom-mode)))
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-racer-executable "~/.cargo/bin/racer")
 '(company-racer-rust-src "~/rust/src")
 '(custom-enabled-themes (quote (shomasd)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "805de5ed1472bc737a925b1f328ac3e4776f5502418d360d604e7e16eeea28cb" "447a2f13a5f1780078ee9ae49b0ede1d62643024b3a9f588c563cdaae0163fab" "959b29de403c8f8fe961fb42aab970e364ae4bd3932cc73023ad0b66de28822b" "34f4067c131a3d09eef7eeaf57c445fe4b61062ba35430eb6b48185705c8e7c0" "8e02d075eba0bfd4cfc3b162fe93e85feab9cfa0fd27f683efca623017d7e583" "1adec90ae7b334fa025df239e13ea12e54b5d5294e0ecb9e70f5b43de558b0c7" "8fd393097ac6eabfcb172f656d781866beec05f27920a0691e8772aa2cdc7132" default)))
 '(custom-theme-load-path
   (quote
    ("/Users/shomasd/.emacs.d/" "/Users/shomasd/.emacs.d/elpa/hc-zenburn-theme-20140811.831/" custom-theme-directory t)) t)
 '(desktop-save-mode nil)
 '(direx-grep:use-migemo t)
 '(direx:leaf-icon "")
 '(disaster-cflags "-m64")
 '(disaster-objdump "gobjdump -d -M att -Sl --no-show-raw-insn")
 '(elscreen-display-tab 40)
 '(flycheck-check-syntax-automatically (quote (save idle-change mode-enabled)))
 '(flycheck-clang-warnings nil)
 '(flycheck-disabled-checkers (quote (emacs-lisp-checkdoc)))
 '(flycheck-flake8-maximum-line-length 999)
 '(flycheck-haskell-hlint-executable "hlint")
 '(flymake-max-parallel-syntax-checks 2)
 '(geiser-active-implementations (quote (racket guile)))
 '(geiser-default-implementation (quote racket))
 '(geiser-repl-history-no-dups-p nil)
 '(global-auto-complete-mode t)
 '(global-auto-revert-mode t)
 '(global-company-mode t)
 '(global-flex-autopair-mode nil)
 '(google-translate-default-source-language "en")
 '(google-translate-default-target-language "ja")
 '(grep-command "lgrep -Au8 -Ia -n ")
 '(grep-find-command
   (quote
    ("find . -type f -exec lgrep -Au8 -Ia -n  /dev/null {} +" . 40)))
 '(grep-find-template
   "find . <X> -type f <F> -exec grep <C> -n -e <R> /dev/null {} +")
 '(grep-highlight-matches nil)
 '(grep-template "grep <X> <C> -n -e <R> <F>")
 '(grep-use-null-device t)
 '(haskell-interactive-popup-errors nil)
 '(haskell-process-show-debug-tips t)
 '(haskell-process-suggest-no-warn-orphans t)
 '(helm-ag-base-command "sg --nocolor --nogroup")
 '(helm-grep-ag-command "sg --line-numbers -S --hidden --color --nogroup %s %s")
 '(imenu-sort-function nil)
 '(inf-ruby-default-implementation "pry")
 '(inf-ruby-implementations (quote (("pry" . "pry"))))
 '(jedi:complete-on-dot t)
 '(jedi:install-python-jedi-dev-command
   (quote
    ("pip3" "install" "--upgrade" "git+https://github.com/davidhalter/jedi.git@dev#egg=jedi")))
 '(lmntal-graphene-executable "~/Desktop/lavit/lmntal/graphene/graphene.jar")
 '(lmntal-home-directory "~/Desktop/lavit/lmntal/")
 '(lmntal-slim-executable "installed/bin/slim")
 '(lsp-haskell-process-path-hie "haskell-language-server-wrapper")
 '(lsp-project-whitelist (quote ("^/Users/shomasd/Desktop/hscaml/$")))
 '(navi2ch-article-exist-message-range nil)
 '(navi2ch-article-new-message-range nil)
 '(navi2ch-article-use-jit t t)
 '(navi2ch-mona-enable t)
 '(navi2ch-mona-ipa-mona-font-family-name "mona-izmg16")
 '(navi2ch-mona-use-ipa-mona t)
 '(neo-theme (quote nerd))
 '(org-agenda-start-with-log-mode t)
 '(org-export-with-sub-superscripts (quote {}))
 '(org-export-with-toc nil)
 '(org-latex-classes
   (quote
    (("article" "\\documentclass[11pt]{article}"
      ("\\section{\\normalfont %s}" . "\\section{\\normalsize \\normalfont \\thesection %s}")
      ("\\subsection{\\normalfont %s}" . "\\subsection{\\normalsize \\normalfont \\thesection \\normalfont %s}")
      ("\\subsubsection{\\normalfont %s}" . "\\subsubsection{\\normalfont %s}")
      ("\\subsubsubsection{\\normalfont %s}" . "\\subsubsubsection{\\normalfont %s}")
      ("\\subsubsubsubsection{\\normalfont %s}" . "\\subsubsubsubsection{\\normalfont %s}"))
     ("report" "\\documentclass[11pt]{report}"
      ("\\part{%s}" . "\\part{%s}")
      ("\\chapter{%s}" . "\\chapter{%s}")
      ("\\section{%s}" . "\\section{%s}")
      ("\\subsection{%s}" . "\\subsection{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection{%s}"))
     ("book" "\\documentclass[11pt]{book}"
      ("\\part{%s}" . "\\part{%s}")
      ("\\chapter{%s}" . "\\chapter{%s}")
      ("\\section{%s}" . "\\section{%s}")
      ("\\subsection{%s}" . "\\subsection{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection{%s}"))
     ("kickoff" "\\documentclass[10pt,a4j]{jarticle}"))))
 '(org-latex-create-formula-image-program (quote dvipng))
 '(org-latex-default-figure-position "H")
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t)
     ("T1" "fontenc" t)
     ("" "fixltx2e" nil)
     ("dvipdfmx" "graphicx" t)
     ("" "longtable" nil)
     ("" "float" nil)
     ("" "wrapfig" nil)
     ("" "rotating" nil)
     ("normalem" "ulem" t)
     ("" "amsmath" t)
     ("" "textcomp" t)
     ("" "marvosym" t)
     ("" "wasysym" t)
     ("" "amssymb" t)
     ("dvipdfmx" "hyperref" nil)
     "\\tolerance=1000")))
 '(org-latex-hyperref-template nil)
 '(org-latex-pdf-process
   (quote
    ("platex %f" "bibtex %b" "platex %f" "dvipdfmx %b.dvi")))
 '(org-latex-toc-command "")
 '(org-latex-with-hyperref nil)
 '(org-level-color-stars-only nil)
 '(org-preview-latex-default-process (quote dvipng))
 '(package-selected-packages
   (quote
    (proof-general cquery hy-mode tabbar direx neotree 0blayout vimrc-mode ssh ssh-agency helm-tramp racket-mode lex lsp-ui phi-autopair shm stream shell-pop multi-term term+ magic-latex-buffer flycheck-elm web-mode lsp-java lsp-rust lsp-haskell fstar-mode flycheck-ocaml tuareg utop merlin ac-octave buffer-stack intero helm-elscreen bison-mode gradle-mode meghanada vhdl-capf eclim edbi-minor-mode sml-mode toml-mode docker docker-tramp dockerfile-mode ctags flycheck-kotlin kotlin-mode todotxt fsharp-mode omnisharp csharp-mode company-racer elm-mode flycheck-liquidhs company-ghc ghc helm-ghc csv-mode spotlight px plantuml-mode ediprolog prolog origami ac-skk lispxmp wolfram hasky-extensions haskell-emacs gnuplot haskell-emacs-base haskell-emacs-text evil-tutor-ja ac-js2 react-snippets js2-mode shakespeare-mode eshell-manual counsel-projectile demo-it ido-describe-bindings company-dcd suggest smex counsel-osx-app flycheck-ghcmod company-restclient restclient yaml-mode wgrep-helm web-beautify wandbox undohist twittering-mode tinysegmenter tabulated-list sx switch-window swift-mode surround sudo-ext sudden-death steam stack-mode slime-company shut-up scheme-complete scala-mode2 save-load-path rustfmt ruby-electric ruby-block real-auto-save r-autoyas quickrun quelpa qml-mode purescript-mode powerline play-routes-mode page-break-lines osx-dictionary open-junk-file noflet navi2ch names mykie modern-cpp-font-lock mew matlab-mode mag-menu logito key-combo key-chord init-loader inflections ido-vertical-mode ido-ubiquitous ido-skk ido-migemo ido-better-flex hippie-expand-haskell helm-swoop helm-projectile helm-itunes helm-img helm-hoogle helm-helm-commands helm-hayoo helm-gtags helm-git-grep helm-git-files helm-git helm-descbinds helm-c-yasnippet helm-ag helm-R guide-key graphviz-dot-mode goto-last-change google-translate google gmail-message-mode geiser free-keys form-feed flymake-python-pyflakes flymake-lua flymake-cursor flymake-coffee flymake flycheck-rust flycheck-irony flycheck-dmd-dub flycheck-d-unittest flycheck-ats2 flex-autopair findr fcopy eww-lnum evil-paredit evil-numbers evil-magit ert-expectations elscreen eldoc-extension el-spy el-spec ein edit-server disaster dired-open dired-narrow dired-k d-mode company-tern company-sourcekit company-shell company-quickhelp company-jedi company-irony-c-headers company-irony company-inf-ruby company-coq company-cmake company-cabal coffee-mode cmake-mode cmake-ide clang-format chess cargo bnfc bind-key auto-yasnippet auto-install auto-async-byte-compile apples-mode anything-git-files anaconda-mode ag ace-popup-menu ace-link ace-jump-mode ac-R)))
 '(plantuml-jar-path "~/plantuml.jar")
 '(py-flake8-command-args "")
 '(python-shell-interpreter "python3" t)
 '(reb-auto-match-limit 100)
 '(remember-data-file "/Users/shomasd/notes.org")
 '(remember-leader-text "* ")
 '(remember-mode-hook nil)
 '(remember-notes-initial-major-mode (quote org-mode))
 '(remember-save-after-remembering nil)
 '(safe-local-variable-values
   (quote
    ((buffer-file-coding-system . utf-8-unix)
     (haskell-process-use-ghci . t)
     (haskell-indent-spaces . 4)
     (eval c-set-offset
           (quote innamespace)
           0))))
 '(scalable-fonts-allowed nil)
 '(scheme-program-name "gosh")
 '(send-mail-function (quote mailclient-send-it))
 '(shell-pop-shell-type (quote ("eshell" "*eshell*" (lambda nil (eshell)))))
 '(shell-pop-universal-key "C-c s")
 '(show-paren-mode t)
 '(show-paren-style (quote parenthesis))
 '(skk-henkan-on-message nil)
 '(skk-jisyo-edit-user-accepts-editing t)
 '(skk-use-act t)
 '(sp-no-reindent-after-kill-modes (quote (coffee-mode js2-mode haskell-mode)))
 '(tool-bar-mode nil)
 '(twittering-allow-insecure-server-cert t)
 '(twittering-auth-method (quote oauth))
 '(writeroom-border-width 30)
 '(writeroom-global-effects
   (quote
    (writeroom-toggle-fullscreen writeroom-toggle-alpha writeroom-toggle-menu-bar-lines writeroom-toggle-tool-bar-lines writeroom-toggle-vertical-scroll-bars)))
 '(writeroom-width 90))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#5b5b5b"))))
 '(company-scrollbar-fg ((t (:background "#c1c1c1"))))
 '(company-template-field ((t (:background "#c1c1c1" :foreground "black"))))
 '(company-tooltip ((t (:inherit default :background "#757575"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face :background "#111111"))))
 '(elscreen-tab-control-face ((t (:background "white" :foreground "black" :underline t))))
 '(elscreen-tab-current-screen-face ((t (:background "blue4" :foreground "yellow"))))
 '(elscreen-tab-other-screen-face ((t (:background "white" :foreground "black" :underline t))))
 '(flycheck-error ((t (:underline (:color "Red1" :style wave)))))
 '(font-lock-constant-face ((t (:foreground "DodgerBlue1"))))
 '(font-lock-keyword-face ((t (:foreground "green1" :weight thin))))
 '(font-lock-type-face ((t (:foreground "Lightpink1"))))
 '(org-level-4 ((t (:inherit outline-8))))
 '(org-level-8 ((t (:inherit outline-4))))
 '(whitespace-big-indent ((t nil)))
 '(whitespace-empty ((t nil)))
 '(whitespace-indentation ((t nil)))
 '(whitespace-line ((t nil))))

;; (set-frame-font "ricty")

;; Cocoa emacsの場合のみフレームのフォントを設定
(defun set-font-size (n)
  (interactive "nFontSize:")
  (when (eq window-system 'ns)
    (set-face-attribute 'default nil :height (* n 10))
    ))

(set-font-size 11)

(defmacro to-string (arg)
  `(format "%s" ,arg))

;; (require 'cocoa)
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'super)
  )

(cd "~/")
(global-unset-key (kbd "s-|"))

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))


;;backup dir
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
	          backup-directory-alist))


;;open init.el
(defun openinit()
  (interactive)
  (popwin:find-file "~/.emacs.d/init.el"))

(setq max-specpdl-size 10000000)

;;shift ヤジルシでウィンドウ移動
(windmove-default-keybindings)

;;clang-format
(require 'cc-mode)
(define-key c++-mode-map (kbd "C-t C-i") (lambda () "DOCSTRING" (interactive) (clang-format-region (point-min) (point-max))))

;;size
(set-frame-parameter nil 'fullscreen 'fullboth)


;;scroll step by step
(global-set-key [wheel-up]
		            (lambda () "Scroll down by 2"
		              (interactive)
		              (previous-line)))
(global-set-key [wheel-right]
		            (lambda () "Scroll down by 2"
		              (interactive)
		              (forward-char)))

(global-set-key [wheel-left]
		            (lambda () "Scroll down by 2"
		              (interactive)
		              (backward-char)))
(global-set-key [wheel-down]
		            (lambda () "Scroll up by 2"
		              (interactive)
		              (next-line)))

;;make silent
(setq visible-bell t)

;;dont show startup message
(setq inhibit-startup-message t)


;; 問い合わせを簡略化 yes/no を y/n
(fset 'yes-or-no-p 'y-or-n-p)


;; yasnippetを置いているフォルダにパスを通す
(require 'yasnippet)
(setq yas-snippet-dirs `(,(expand-file-name "~/.emacs.d/snippets")))

(yas-global-mode 1)
;; (yas--initialize)

;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x C-i C-i") 'helm-yas-complete)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x C-i C-n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x C-i C-v") 'yas-visit-snippet-file)

;;helm-kill-ring
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)

;;helm
(require 'helm)
(require 'helm-files)
(require 'migemo)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-M-z") 'helm-resume)
(helm-mode 1)
(helm-migemo-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

(defadvice helm-buffers-sort-transformer (around ignore activate)
  (setq ad-return-value (ad-get-arg 0)))

;; Emulate `kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))
;; For find-file etc.
(define-key helm-read-file-map (kbd "C-x") 'helm-execute-persistent-action)
;; For helm-find-files etc.
(define-key helm-find-files-map (kbd "C-x") 'helm-execute-persistent-action)
;; For find-file etc.
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; For helm-find-files etc.
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(defadvice helm-ff-transform-fname-for-completion (around my-transform activate)
  "Transform the pattern to reflect my intention"
  (let* ((pattern (ad-get-arg 0))
         (input-pattern (file-name-nondirectory pattern))
         (dirname (file-name-directory pattern)))
    (setq input-pattern (replace-regexp-in-string "\\." "\\\\." input-pattern))
    (setq ad-return-value
          (concat dirname
                  (if (string-match "^\\^" input-pattern)
                      ;; '^' is a pattern for basename
                      ;; and not required because the directory name is prepended
                      (substring input-pattern 1)
                    (concat ".*" input-pattern))))))

(setq helm-candidate-number-limit 150)

;;popwin
(require 'rx)
(require 'popwin)
(popwin-mode t)
(setq popwin:special-display-config `(
				                              ("*pry*" :position right :width 0.5)
				                              ("daily-projects.org" :position right :width 0.5)
				                              ("*Geiser dbg*" :noselect t :position right :width 0.5)
				                              ("* Guile REPL *" :noselect t :position right :width 0.5)
				                              ("* Racket REPL *" :noselect t :position right :width 0.5)
				                              ("*Shell Command Output*" :noselect t)
				                              ("*grep*" :position right :width 0.5)
				                              ("*Completions*" :noselect t)
				                              ("*YASnippet tables*" :noselect t)
				                              ("*Occur*")
				                              ("*Diff*" :position right :width 0.5 :noselect t)
				                              ("*Kill Ring*")
				                              ("*dvi-preview*")
				                              ("*GHC Info*" :noselect t)
				                              ("*Messages*" :noselect t)
				                              ("*Backtrace*" :noselect t)
				                              ("*Compile-Log*" :position right :width 0.5 :noselect t)
				                              (".*input/output.*" :regexp t :noselect t)
				                              (" *undo-tree*" :position right)
				                              ("*Google Translate*" :position bottom)
				                              (".*twittering-edit.*" :regexp t)
				                              ("*anything complete*" :position right :width 0.5 :dedicated t)
				                              ("*anything*" :position right :width 0.5 :dedicated t)
				                              ("*Anything Test Sources*")
				                              ("*YaTeX-typesetting*" :noselect t)
				                              ("*compilation*" :position right :width 0.5 :noselect t)
				                              ("*ggtags-global*":position right :width 0.5 :noselect t)
				                              ("*haskell*" :position right :width 0.5)
				                              (inferior-python-mode :position right :width 0.5 :noselect t)
				                              ;; (,(rx bol "*magit" (* nonl)) :regexp t :position right :width 0.5)
				                              ("*magit-commit*" :position right :width 0.5)
				                              ("\\*vc-.*" :regexp t :position right :width 0.5 :noselect t)
				                              ("*Apropos*" :position right :width 0.5)
				                              ("*Remember*")
				                              ("*Warnings*")
				                              (" *auto-async-byte-compile*")
				                              ("init.el")
				                              (,(rx "*Man " (* nonl)) :regexp t :position right :width 0.5)
				                              (,(rx "*royan*" (* nonl)) :regexp t)
				                              ("*scratch*")
				                              ("*assembly*" :position right :width 0.5)
				                              ;; (,(rx (and "*helm*" (* nonl))) :position right :width 0.5)
				                              (,(rx (and "*gud" (* nonl))) :position right :width 0.5)
				                              ("*dcd-document*" :position right :width 80)
				                              ("*dcd-error*")
				                              ("*cpp-macro-expand*" :position right :width 0.5)
				                              ("*dictionary*" :position right :width 0.5)
				                              ("*Help*" :position right :width 0.5)
				                              ("*quickrun*")
				                              ("*Warnings*":noselect t)
				                              ("Geiser dbg*" :noselect t)
				                              ("*GHC Error*" :noselect t)
				                              (,(rx (and "*" (* nonl) "-stack*")) :regexp t :position right :width 0.5)
				                              (,(rx (and "*sbt*" (* nonl))) :regexp t :position right :width 0.5)
				                              ("*ensime-update*" :position right :width 0.5)
				                              ("**company-ghc diagnostic info**" :position right :width 0.5)
				                              ;; (,(rx "*intero:" (* nonl) ":repl*") :regexp t :position right :width 0.5)
				                              ("*LMNtal Output*")
				                              ;; (,(rx "*" (* nonl) "*") :regexp t :position right :width 0.5 :noselect t)
				                              (,(rx (* nonl) "lmn-SLIMcode") :regexp t :position right :width 0.5)
                                      ("*LMNtal Output*")
				                              ))

;;-------------------

(require 'f)

;; (setq direx:ignored-files-regexp "\\(?:\\(?:\\.\\(?:a\\(?:nnot\\|ux\\)\\|b\\(?:bl\\|in\\|lg\\|zr/\\)\\|c\\(?:lass\\|m\\(?:ti\\|xa\\|[/aiotx]\\)\\|ps?\\)\\|d\\(?:\\(?:64fs\\|fs\\|x\\(?:\\(?:32\\|64\\)fs\\)?\\)l\\)\\|elc\\|f\\(?:asl?\\|mt\\|ns?\\|\\(?:x\\(?:\\(?:32\\|64\\)f\\)\\)?sl\\)\\|g\\(?:it/\\|lob?\\|mo\\)\\|h\\(?:g/\\|i\\)\\|idx\\|kys?\\|l\\(?:bin\\|ib\\|o[ft]\\|x\\(?:\\(?:32\\|64\\)fsl\\)\\|[ano]\\)\\|m\\(?:em\\|o\\)\\|p\\(?:64fsl\\|fsl\\|gs?\\|y[co]\\)\\|s\\(?:o\\|parcf\\|vn/\\|x\\(?:\\(?:32\\|64\\)fsl\\)\\)\\|t\\(?:fm\\|oc\\|ps?\\)\\|ufsl\\|v\\(?:rs\\|[or]\\)\\|wx\\(?:\\(?:32\\|64\\)fsl\\)\\|x86f\\|[ao]\\)\\|C\\(?:\\(?:M\\|VS\\)/\\)\\|_\\(?:\\(?:MTN\\|darcs\\)/\\)\\|~\\)\\|#\\|\\.DS_Store\\)$")
;; ;;direx:create-file
;; (defun direx:create-file ()
;;   (interactive)
;;   (let* ((item (direx:item-at-point!))
;; 	 (parent-dir (direx:parent-dir item))
;; 	 (fname (read-directory-name "Create file: " parent-dir)))
;;     (when (file-exists-p fname)
;;       (error "Can't create file %s: file exists" fname))
;;     (f-touch fname)
;;     (direx:refresh-whole-tree)
;;     (direx:item-refresh-parent item)
;;     (direx:move-to-item-name-part item)))

;; (defun direx:copy-path-of-item-at-point ()
;;   (interactive)
;;   (kill-new (direx:file-full-name (direx:item-tree (direx:item-at-point!)))))

(require 'dired)
(require 'dired-k)
(require 'dired-narrow)

(define-key dired-mode-map (kbd "C-s") 'dired-narrow)
(define-key dired-mode-map (kbd "g") 'dired-k)
(define-key dired-mode-map (kbd "TAB") 'dired-subtree-toggle)
(add-hook 'dired-initial-position-hook 'dired-k)
(add-hook 'dired-mode-hook 'dired-hide-details-mode)

;; (require 'direx-grep)
;; (define-key direx:direx-mode-map (kbd "s") 'direx-grep:grep-item)
;; (define-key direx:direx-mode-map (kbd "S") 'direx-grep:grep-item-from-root)
;; (define-key direx:direx-mode-map (kbd "a") 'direx-grep:show-all-item-at-point)
;; (define-key direx:direx-mode-map (kbd "A") 'direx-grep:show-all-item)



;;shellWithDirex
;; (defun direx:shell-with-direx(cmd)
;; (  (interactive)
;;   (shell-command cmd)
;;   (direx:refresh-whole-tree)
;; ))
;; (define-key direx:direx-mode-map (kbd "M-!") 'direx:shell-with-direx)




;;org-mode
(require 'org)
(defvar org-directory "~/Documents/org")


;;dont close emacs
(global-unset-key (kbd "C-x C-c"))


(add-hook 'c-mode-hook
	        (lambda ()
	          (eldoc-mode)))


;;org画像表示
(setq org-startup-with-inline-images nil)
;; (add-hook 'org-mode-hook 'turn-on-iimage-mode)

;;hs-minor-mode
(add-hook 'lisp-mode-hook
	        (lambda ()
	          (hs-minor-mode t)))
(add-hook 'c++-mode-hook
	        (lambda ()
	          (hs-minor-mode t)))
(add-hook 'c-mode-hook
	        (lambda ()
	          (hs-minor-mode t)))

;;(global-set-key (kbd "C-t C-t") 'hs-toggle-hiding)

(defun copy-report-dummies ()
  (interactive)
  (f-copy-contents "~/reportdummy" "."))

;;-------------------
;;haskell

(require 'haskell-mode)

(require 'company)
(require 'haskell-interactive-mode)

(add-to-list 'auto-mode-alist  '("\\.y$" . haskell-mode))
(add-to-list 'auto-mode-alist  '("\\.z$" . haskell-mode))

(add-hook 'haskell-mode-hook 'eldoc-mode)

(setq
 haskell-compile-cabal-build-command "cd %s && stack build"
 haskell-process-type 'stack-ghci
 haskell-interactive-popup-errors nil
 haskell-process-path-ghci "ghci"
 )

(add-to-list 'load-path "/Users/shomasd/ghc-mod/elisp")
(autoload 'ghc-init "/Users/shomasd/ghc-mod/elisp/ghc" nil t)
(autoload 'ghc-debug "/Users/shomasd/ghc-mod/elisp/ghc" nil t)
;; (defvar ghc-interactive-command "ghc-modi")
(defun my-haskell-mode-hook ()
  (require 'lsp-ui)
  (require 'lsp-mode)
  (require 'lsp-haskell)
  (lsp)
  (smartparens-mode 1)
  (flycheck-mode 1)
 )

(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)
(setq company-transformers '(company-sort-by-backend-importance))

;; haskell-mode keymap
(require 'haskell-mode)
(require 'haskell)

(require 'phi-autopair)
(add-hook 'haskell-mode-hook 'phi-autopair-mode)
(add-hook 'haskell-interactive-mode-hook 'smartparens-mode)
(defun never-save-on-haskell-interactive-mode ()
  (interactive)
  (message "Can't save this buffer"))
(define-key haskell-interactive-mode-map (kbd "C-x C-s") 'never-save-on-haskell-interactive-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;; (define-key haskell-mode-map (kbd "C-.") 'company-ghc)
(define-key haskell-mode-map (kbd "s-b")
  (lambda () (interactive)
    (compile "~/.local/bin/stack build")))
(define-key haskell-mode-map (kbd "s-r")
  (lambda () (interactive)
    (compile "~/.local/bin/stack test")))

(defun hie-haddock-gen-db ()
  (interactive)
  (call-process-shell-command "stack haddock --keep-going"))

;;-------------------

;;flycheck
(require 'flycheck)
(define-key flycheck-mode-map (kbd "M-n") 'flycheck-next-error)
(define-key flycheck-mode-map (kbd "M-p") 'flycheck-previous-error)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
;;flymakeでも同様のキーバインド
(require 'flymake)

;;-------------------;;.hファイルをc++-modeで開く
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))


(setenv "OPENNI2_INCLUDE" "/usr/local/include/ni2")
(setenv "OPENNI2_REDIST" "/usr/local/lib/ni2")

(setq truncate-lines nil)
(add-hook 'org-mode-hook
	        (lambda () (setq truncate-lines nil)))

(setq org-use-speed-commands t)

;;Ctrl-Shift-Zをredoに
(define-key global-map (kbd "s-Z") 'redo)

;;-------------------

;; evil-mode
(require 'evil)
(require 'evil-paredit)
;; (require 'direx)
(evil-mode 1)
(evil-paredit-mode 1)
(setq evil-move-cursor-back nil)
(eval-after-load 'evil (setcdr evil-insert-state-map nil))
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-ex-completion-map (kbd "C-b") 'backward-char)

;; PgUp,PgEndで半ページスクロール
(global-set-key [prior] 'evil-scroll-up)
(global-set-key [next] 'evil-scroll-down)

;; scroll other window
(global-set-key (kbd "M-<up>") 'scroll-other-window-down)
(global-set-key (kbd "M-<down>") 'scroll-other-window)
;; evilでctags
(define-key evil-normal-state-map (kbd "g s") 'ctags-search)

;; direxでevil無効化.

;; (evil-make-overriding-map direx:direx-mode-map)
;; ;;undo-treeでも
;; (evil-make-overriding-map undo-tree-map)
;; (evil-add-hjkl-bindings undo-tree-map)

;; ;; diredでも無効化したかった (けどできてない)
;; (evil-make-overriding-map dired-mode-map)
;; (evil-add-hjkl-bindings dired-mode-map)

;; help mode でも無効化.
(evil-make-overriding-map help-mode-map)
;;(evil-add-hjkl-bindings help-mode-map)

;;evilでC-f C-b無効化したい
(define-key evil-motion-state-map (kbd "C-f") 'forward-char)
(define-key evil-motion-state-map (kbd "C-b") 'backward-char)


(define-key evil-normal-state-map (kbd "C-+") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C--") 'evil-numbers/dec-at-pt)


;;key-combo
(require 'key-combo)
(global-key-combo-mode t)

(key-combo-define-hook key-combo-common-mode-hooks
                       'key-combo-common-load-default key-combo-common-default)

(key-combo-define c++-mode-map (kbd "<>") "<`!!'>")
(key-combo-define c++-mode-map (kbd "<") '(" < " " << "))
(key-combo-define c++-mode-map (kbd ">") '(" > " " >> "))
(key-combo-define c++-mode-map (kbd "=") " = ")
(key-combo-define c++-mode-map (kbd "==") " == ")
(key-combo-define c++-mode-map (kbd ",") ", ")
(key-combo-define c++-mode-map (kbd "->") "->")
(key-combo-define c++-mode-map (kbd "&") "&")
(key-combo-define c++-mode-map (kbd ";") '(";" "::"))
(key-combo-define c++-mode-map (kbd "{") '(key-combo-execute-original "{\n\t`!!'\n
}"))

(cl-loop for map in `(,haskell-mode-map ,haskell-interactive-mode-map)
      do
      (key-combo-mode -1)
      (key-combo-define map (kbd ",") ", ")
      (key-combo-define map (kbd ";") '(";" " :: "))
      (define-key map (kbd "C-,") 'my-company-ghc-hoogle)
      (define-key map (kbd "C-c C-t") 'ghc-show-type)
      (define-key map (kbd "C-c C-k") 'ghc-kill-process))

(defun my-company-ghc-hoogle (ch)
  (interactive "cinsert first char!")
  (let ((s (char-to-string ch)))
    (insert s)
    (company-ghc-complete-by-hoogle s)
    ))

;; jedi-mode
(require 'python-mode)
(define-key python-mode-map (kbd "C-.") 'company-jedi)


;;pdb python3
(require 'gud)
(setq gud-pdb-command-name "python3 -m pdb")

;;flycheck-python
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(add-hook 'python-mode-hook 'flycheck-mode)
(setq flycheck-flake8-maximum-line-length 999)

;;-------------------

(require 'google-translate)

(defun open-current-file-in-eww ()
  (interactive)
  (eww-open-file (buffer-file-name)))
;; (require 'html)
;; (define-key html-mode-map (kbd "C-c C-t") 'open-current-file-in-eww)

(require 'switch-window)

;;grep shift-jis
(setq grep-command "lgrep -Au8 -Ia -n ")

;; slime
(require 'slime)
(setq inferior-lisp-program "/usr/local/bin/clisp")
(add-hook 'slime-mode-hook 'paredit-mode)

(require 'slime-company)
(slime-setup '(slime-company))

(add-hook 'slime-repl-mode-hook (lambda ()
				                          (set-up-slime-ac)
				                          (auto-complete-mode t)
				                          (company-mode -1)))

;; (slime-setup)

;; migemo
(require 'migemo)
(setq migemo-command "/usr/local/bin/cmigemo")
(setq migemo-options '("-q" "--emacs"))
(setq migemo-dictionary "/usr/local/Cellar/cmigemo/20110227/share/migemo/utf-8/migemo-dict")

(setq migemo-user-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(setq migemo-regex-dictionary nil)
(load-library "migemo")
(migemo-init)

;;ggtags
;; (require 'ggtags)
;; (add-hook 'c-mode-hook (lambda ()
;; 			  (ggtags-mode 1)
;; 			  (helm-gtags-mode)))
;; (add-hook 'c++-mode-hook (lambda ()
;; 			    (ggtags-mode 1)
;; 			    (helm-gtags-mode)))
;; (define-key evil-normal-state-map (kbd "g d") 'helm-gtags-dwim)

(global-set-key (kbd "M-b") 'evil-backward-word-begin)
(global-set-key (kbd "M-f") 'evil-forward-word-begin)


;;ielm
(require 'ielm)


(add-hook 'ielm-mode-hook
	        (lambda () "init ac for ielm"
	          (setq ac-sources '(ac-source-functions
				                       ac-source-variables
				                       ac-source-features
				                       ac-source-symbols
				                       ac-source-words-in-same-mode-buffers))
	          (auto-complete-mode 1)))

;;open-junk-file
(require 'open-junk-file)
(setq open-junk-file-format "~/junk/%S.")

(define-key global-map (kbd "C-x C-z") 'open-junk-file)
(setq open-junk-file-find-file-function 'find-file)

;;lispの評価結果を注釈
(require 'lispxmp)
(define-key emacs-lisp-mode-map (kbd "C-c C-d") 'lispxmp)

(require 'smartparens)
(define-key smartparens-mode-map (kbd "M-s") 'sp-splice-sexp)
(define-key smartparens-mode-map (kbd "C-)") 'sp-forward-slurp-sexp)
(define-key smartparens-mode-map (kbd "C-(") 'sp-backward-slurp-sexp)
(define-key smartparens-mode-map (kbd "C-}") 'sp-forward-barf-sexp)
(define-key smartparens-mode-map (kbd "C-{") 'sp-backward-barf-sexp)

(cl-loop for hook in '(haskell-mode-hook
		                   interactive-haskell-mode-hook
		                   scala-mode-hook
		                   c-mode-hook
		                   c++-mode-hook
		                   coq-mode-hook
		                   ruby-mode-hook
		                   python-mode-hook
		                   eshell-mode-hook
		                   web-mode-hook
		                   org-mode-hook)
	       do (add-hook hook 'smartparens-mode))


(setq sp-pairs
      '((t
         .
         ((:open "\\\\(" :close "\\\\)" :actions (insert wrap autoskip navigate))
          (:open "\\{"   :close "\\}"   :actions (insert wrap autoskip navigate))
          (:open "\\("   :close "\\)"   :actions (insert wrap autoskip navigate))
          (:open "\\\""  :close "\\\""  :actions (insert wrap autoskip navigate))
          (:open "\""    :close "\""
                 :actions (insert wrap autoskip navigate escape)
                 :unless (sp-in-string-quotes-p)
                 :post-handlers (sp-escape-wrapped-region sp-escape-quotes-after-insert))
          ;; (:open "'"     :close "'"
          ;;  :actions (insert wrap autoskip navigate escape)
          ;;  :unless (sp-in-string-quotes-p sp-point-after-word-p)
          ;;  :post-handlers (sp-escape-wrapped-region sp-escape-quotes-after-insert)) ;; remove sigle quote
          (:open "("     :close ")"     :actions (insert wrap autoskip navigate))
          (:open "["     :close "]"     :actions (insert wrap autoskip navigate))
          (:open "{"     :close "}"     :actions (insert wrap autoskip navigate))
          (:open "`"     :close "`"     :actions (insert wrap autoskip navigate))))))

(define-key haskell-interactive-mode-map (kbd "C-c C-l") (lambda () (interactive) (message "Can't do it in this buffer!")))

(defun haskell-interactive-history-completing-read ()
  (interactive)
  (insert (funcall haskell-completing-read-function "history:" haskell-interactive-mode-history)))
(define-key haskell-interactive-mode-map (kbd "C-c C-h") 'haskell-interactive-history-completing-read)
(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)

(require 'auto-async-byte-compile)

(setq auto-async-byte-compile-exclude-files-regexp (rx (or "init.el" (regexp "junk.*"))))
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
(setq auto-async-byte-compile-suppress-warnings t)


(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
;;(eldoc-ex)

;; (setq eldoc-idle-delay 0.2)
(setq eldoc-minor-mode-string "")
(show-paren-mode 1)
(find-function-setup-keys)

;;test
(require 'save-load-path)
(save-load-path-initialize)


;;mew
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(require 'mew)
;; Optional setup (Read Mail menu):
(setq read-mail-command 'mew)

;; Optional setup (e.g. C-xm for sending a message):
(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'mew-user-agent
      'mew-user-agent-compose
      'mew-draft-send-message
      'mew-draft-kill
      'mew-send-hook))

(setq mew-ssl-verify-level 0)
(setq mew-use-master-passwd t)

(setq mew-name "Shojin Masuda (tsukimi)")
(setq mew-imap-trash-folder "%[Gmail]/Trash")


;;余分なスペースを削除するすごいやつだよ
(defun delete-spaces-forward ()
  (interactive)
  (let ((c (char-to-string(following-char))))
    (while
	      (or (equal c " ")
	          (equal c "\t"))
      (delete-char 1)
      (setq c (char-to-string(following-char)))
      )))

(defun delete-spaces-backward ()
  (interactive)
  (let ((c (save-excursion
	           (backward-char)
	           (char-to-string (following-char)))))
    (while (or
	          (equal c " ")
	          (equal c "\t"))
      (delete-char -1)
      (save-excursion
	      (backward-char)
	      (setq c (char-to-string(following-char))))
      )))

(global-set-key (kbd "C-t C-b") 'delete-spaces-backward)
(global-set-key (kbd "C-t C-f") 'delete-spaces-forward)

(require 'auto-yasnippet)
(setq aya-create-with-newline t)
(global-set-key (kbd "C-c w") 'aya-create)
(global-set-key (kbd "C-c y") 'aya-expand)
(setq aya-marker-one-line "eueueueuunused$$$")


;;emacs-wandbox
(add-to-list 'load-path (expand-file-name "~/.emacs.d/myel/emacs-wandbox"))
(require 'wandbox)


;;rtags
;; (require 'rtags)

;;C-x k or C-x C-k to kill current buffer
(global-set-key (kbd "C-x k") (lambda () "kill-current-buffer"
				                        (interactive)
				                        (kill-buffer (current-buffer))))
(global-set-key (kbd "C-x C-k") (lambda () "kill-current-buffer"
				                          (interactive)
				                          (kill-buffer (current-buffer))))

;; cmake
;; Add cmake listfile names to the mode list.

(require 'cmake-mode)
(add-to-list 'auto-mode-alist '("CMakeLists\\.txt" . cmake-mode))
(add-to-list 'auto-mode-alist '("\\.cmake" . cmake-mode))
(defun opencmakelists ()
  (interactive)
  (if (file-exists-p (expand-file-name "./CMakeLists.txt"))
      (find-file "./CMakeLists.txt")
    (progn (f-touch "CMakeLists.txt")
	         (find-file "./CMakeLists.txt"))
    ))

;; C++
(require 'modern-cpp-font-lock)
(modern-c++-font-lock-global-mode t)

(require 'company)
(require 'irony)
(require 'company-irony)
(require 'cquery)

;; (setq cquery-executable "/path/to/cquery/build/release/bin/cquery")

(defun my-c++-mode-hook ()
  (lsp)
  ;; (irony-mode 1)
  ;; (irony-cdb-autosetup-compile-options)
  (flycheck-mode 1)
  (company-mode 1)
  ;; (flycheck-irony-setup)
  (add-to-list 'flycheck-clang-args "-std=c++14")
  )

(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-to-list 'company-backends 'company-irony)
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
(defun my-irony-mode-hook ()
  (set-flycheck-options-from-irony)
  )
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(defun my-c-mode-hook ()
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'flycheck-mode)
  (irony-cdb-autosetup-compile-options)
  )

(add-hook 'c-mode-hook 'my-c-mode-hook)

(define-key irony-mode-map (kbd "C-.") 'company-irony)

(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
;; ;; (optional) adds CC special commands to `company-begin-commands' in order to
;; ;; trigger completion at interesting places, such as after scope operator
;; ;;     std::|
;; (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)




(defun set-flycheck-options-from-irony ()
  (interactive)
  (cl-loop for path in irony--compile-options
	      collect (string-match (rx "^-I" (submatch (* nonl))) path)
	      do (add-to-list flycheck-clang-includes (match-string 1 path))))

;;ジェネリックモードだそうです
(require 'generic-x)

;;eval-and-replace
(defun eval-and-replace ()
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
	           (current-buffer))
    (error (message "Invalid expression")
	         (insert (current-kill 0)))))
(global-set-key (kbd "C-t C-e") 'eval-and-replace);;できればC-u C-x C-eを置き換えたいなあ...

(defmacro sane-match-string (reg str num)
  "Wrap crazy syntax of `match-string'.
It try (regex-match `REG' `STR'), and return `NUM'th match."
  (progn
    (string-match reg str)
    (match-string num str)))

(defun scratch ()
  (interactive)
  (display-buffer (get-buffer-create "*scratch*"))
  (emacs-lisp-mode))
;; (global-set-key (kbd "C-t C-s") 'scratch)


;;rx-replace
(defun rx-eval-and-replace ()
  "eval last rx expression and replace it."
  (interactive)
  (if (equal 'rx (car (sexp-at-point)))
      (let ((raw-regex (eval (sexp-at-point))))
	      (kill-sexp -1)
	      ;; エスケープ戻して普通にしたい
	      (insert raw-regex))
    (error "sexp at point is not rx expression.")))


;;(format "%s")

;;-------------------;;disaster-popwin
(require 'disaster)
(defadvice disaster (after disaster-popwin activate)
  (let* ((asm-window (get-buffer-window "*assembly*")))
    (when asm-window
      (let ((asm-buf (window-buffer asm-window)))
	      (message "asm-window found")
	      (delete-window asm-window)
	      (display-buffer asm-buf)))
    (message "asm-window not found")
    ;; if asm-window not found, do nothing
    ))


;;-------------------(require 'auto-install)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install"))
(setq auto-install-directory "~/.emacs.d/auto-install/")
;; (auto-install-update-emacswiki-package-name t)
(require 'auto-install)
(auto-install-compatibility-setup)

;;key/space chord
(require 'key-chord)

;;Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; (require 'cocoa)


(require 'ace-jump-mode)
(require 'helm-git-files)
;; (setq space-chord-delay 0.08)
;; (space-chord-define-global (kbd "g") 'helm-git-files)
;; (space-chord-define-global (kbd "r")  'helm-recentf)
;; (space-chord-define-global (kbd "h") 'ace-jump-mode)
;; (space-chord-define-global (kbd "p") 'ace-jump-mode-pop-mark)
;; (space-chord-define-global (kbd "d") 'osx-dict-at-point)

;;yaml
(require 'yaml-mode)
(add-hook 'yaml-mode-hook
	        (lambda ()
	          (flycheck-mode t)))


(defun cpp-macro-expand ()
  "preprocess cpp code"
  (interactive)
  (let ((buf (get-buffer-create "*cpp-macro-expand*")))
    (with-current-buffer buf
      (erase-buffer)
      (c++-mode))

    (shell-command (concat "clang++ -E -std=c++14 " (buffer-file-name)) buf)
    (display-buffer buf)))

(defun make-push-back (elems)
  "fucking dirty hack for c++98. convert list of values to list of push_back."
  (interactive "xelems:")
  (print elems)
  (cl-loop for elem in elems
	         do (insert (format "push_back(%s);\n" elem))))

;;-------------------

;;Dlang: make function UFCS
(defun make-ufcs ()
  "Call it at the end of the D function."
  (interactive)

  (save-excursion
    (backward-sexp)
    (forward-char)
    (let* ((beg (point-marker))
	         (end (progn
		              (re-search-forward (rx (or ")" ",")))
		              (if (string= ")" (char-to-string (char-before)))
		                  (progn
			                  (backward-char 1)
			                  (point-marker))
		                (point-marker))))
	         (str (progn
		              (kill-region beg end)
		              (car kill-ring))))
      (setq kill-ring (cdr kill-ring))
      ;; kill(me, baby); のとき, これがないとstrが me, になる
      (setq str (replace-regexp-in-string "," "" str))

      ;; kill(me, baby); のとき, これがないと me.kill( baby); になる
      (when (string= " " (char-to-string (char-after)))
	      (delete-char 1))

      (re-search-backward (rx (or "\t" bol " ")))
      (forward-char)

      (insert (concat str ".")))))


;; ;;golang

;; (add-to-list 'exec-path (expand-file-name "/Users/shomasd/go/bin"))
;; (setenv "GOPATH" (expand-file-name "~/go"))

;; (add-to-list 'load-path "/Users/shomasd/go/src/github.com/nsf/gocode/emacs-company")
;; (require 'company)
;; (require 'company-go)

;; (add-hook 'go-mode-hook (lambda ()
;; 			   (company-mode-on)
;; 			   (flycheck-mode)))

;; (require 'rtags)
;; (add-to-list 'exec-path "/Users/shomasd/.emacs.d/myel/rtags/bin")
(global-company-mode t)

(defun delete-irony-server ()
  (interactive)
  (delete-directory "~/.emacs.d/irony" t))

;;-------------------
;; realgud
;; (require 'realgud)

(add-hook 'comint-mode-hook (lambda () (company-mode -1)))

(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x" "C-x 4" "C-x 5" "C-x n" "C-x r" "C-c" "C-t" "C-x c" "C-c p"))
(setq guide-key/idle-delay 0.5)
(guide-key-mode 1)


;;wdired
(require 'dired)
(require 'wdired)
(setq wdired-allow-to-change-permissions t)
(define-key dired-mode-map "e" 'wdired-change-to-wdired-mode)

;;elscreen
(defvar elscreen-display-tab 40)
(require 'elscreen)
(mapc
 (lambda (frame)
   (elscreen-make-frame-confs frame 'keep))
 (frame-list))
(global-set-key (kbd "s-{") 'elscreen-previous)
(global-set-key (kbd "s-}") 'elscreen-next)
(global-set-key (kbd "s-w") 'elscreen-kill)
(global-set-key (kbd "s-n") 'elscreen-create)


;; orgにinlineソースコード表示

(defadvice next-error (after use-only-one-window activate)
  (delete-other-windows)
  )

(require 'eldoc)
(setq c-eldoc-cpp-command "/usr/bin/cpp ")
;; (setq c-eldoc-cpp-macro-arguments "-dD -w -P")
;; (setq c-eldoc-cpp-normal-arguments "-w -P")


;; (prettify-symbols-mode t)


(defun cc-add-include (str)
  (interactive "sheader:")
  (save-excursion
    (re-search-backward (rx (and "#include" (* " ") (or "<" "\"") (* nonl) (or ">" "\""))) 0 t)
    (end-of-line)
    (insert "\n")
    (insert (format "#include <%s>" str))
    ))
(require 'trace)

;; ;;;; trace-functionの結果をorg-modeで表示する設定
;; (defadvice trace-function-internal (before trace-org-mode (function buffer &rest _) activate)
;;   "view-modeのままでも書き込みできるようにする"
;;   (with-current-buffer (get-buffer-create (or buffer trace-buffer))
;;     (set (make-local-variable 'inhibit-read-only) t)))

;; ;;; display
;; (defun display-buffer-trace-output (buffer alist)
;;   "*trace-output*をorg-mode/view-modeで先程のトレース結果を画面上部で表示"
;;   (let (display-buffer-alist) (display-buffer buffer))
;;   (with-selected-window (get-buffer-window buffer)
;;     (org-mode)
;;     (org-hide-block-all)
;;     (view-mode 1)
;;     (org-overview)
;;     (ignore-errors
;;       (goto-char (point-max))
;;       (call-interactively 'previous-line) ;avoid warning
;;       (org-show-subtree)
;;       (recenter 0))
;;     (selected-window)))

;; (add-to-list 'display-buffer-alist
;;              `(,(rx (or "*trace-output"))
;;                display-buffer-trace-output))

;;; 連続したトレースをまとめて表示する
(defvar trace-entry-last-time (float-time))
(defvar trace-session-duration 2
  "ひとまとまりのtraceを表示する時間単位")

(defadvice trace-entry-message (after add-time-and-backtrace (function &rest _) activate)
  "trace結果をorg形式に整形"
  (let ((btbuf (generate-new-buffer " trace-backtrace"))
        (bt (with-output-to-string (backtrace))))
    (with-current-buffer btbuf
      (insert bt)
      (goto-char 1))
    (setq ad-return-value
	        (format "%s** %s\n[[elisp:(view-buffer \"%s\")]]\n%s\n"
		              (if (<= trace-session-duration (- (float-time) trace-entry-last-time))
		                  (format "* Session %s\n" (format-time-string "%X"))
		                "")
		              function
		              ;; (with-output-to-string (backtrace))
		              (buffer-name btbuf)
		              ad-return-value)))
  (setq trace-entry-last-time (float-time)))
(setq trace-separator "\n")

;; (defun org-ctrl-c-ctrl-c-hook--trace-pp-sexp ()
;;   (when (and (string= "*trace-output*" (buffer-name))
;;              (string-match "^[|0-9]+ " (thing-at-point 'line)))
;;     (pp-display-expression (read (concat "(" (thing-at-point 'line) ")"))
;;                            "*pp*")
;;     t))
;; (add-hook 'org-ctrl-c-ctrl-c-hook 'org-ctrl-c-ctrl-c-hook--trace-pp-sexp)

(setenv "GTAGSLIBPATH" "/usr/local/incude")

(global-unset-key (kbd "s-t"))

(defun help-me-rubikitch-san (package)
  (interactive "sPackageName: ")
  (eww-browse-url (format "http://rubikitch.com/tag/package:%s/" package)))
(require 'eww)
(setq eww-search-prefix "https://www.google.co.jp/search?q=")

(define-key eww-mode-map (kbd "L") 'eww-forward-url)
(define-key eww-mode-map (kbd "H") 'eww-back-url)

(require 'eww-lnum)

(define-key eww-mode-map (kbd "f") 'eww-lnum-follow)
(define-key eww-mode-map (kbd "F") 'eww-lnum-universal)

;;org-latex
(require 'ox-latex)
;; (require 'ox-bibtex)
(add-to-list 'exec-path "/Library/TeX/texbin")
(setq org-latex-pdf-process
      '("platex %f"
        "platex %f"
        "bibtex %b"
        "platex %f"
        "platex %f"
        "dvipdfmx %b.dvi"))

;; (add-hook 'org-mode-hook (lambda () "DOCSTRING" (interactive)
;; 			    (define-key 'org-mode-map)))
(define-key org-mode-map (kbd "s-b")
  (lambda () "" (interactive)
    (org-latex-export-to-pdf)
    (save-excursion
      (goto-char (point-min))
      (let ((val 0))
	      (while (< (point) (point-max))
	        (setq val (+ 1 val))
	        (forward-char))
	      (let* ((org-name (buffer-file-name))
		           (pdf-name (format "%s.pdf" (s-chop-suffix ".org" org-name))))
	        (call-process-shell-command (format "open %s" pdf-name)))
	      (message (format "文字数: %s" val))
	      ))))

;; org-latex-preview
(defun org-preview-latex-fragment-advice (orig &rest args)
  (save-excursion
    (re-search-backward (rx (or "\\[" "$")))
    (forward-char)
    (apply orig args))
  (recenter))

(advice-add 'org-preview-latex-fragment :around 'org-preview-latex-fragment-advice)
(advice-remove 'org-preview-latex-fragment-advice 'org-preview-latex-fragment)
;; src code highlight

(setq org-latex-listings nil)

;;-------------------

(require 'eww)

;;; [2014-11-17 Mon]背景・文字色を無効化する
(defvar eww-disable-colorize t)
(defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
  (unless eww-disable-colorize
    (funcall orig start end fg)))
(advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
(advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)

(defun eww-disable-color ()
  "ewwで文字色を反映させない"
  (interactive)
  (setq-local eww-disable-colorize t)
  (eww-reload))

(defun eww-enable-color ()
  "ewwで文字色を反映させる"
  (interactive)
  (setq-local eww-disable-colorize nil)
  (eww-reload))

(require 'quickrun)
(quickrun-add-command
  "c++/clang++" '((:command . "clang++ -std=c++17 -I/Users/shomasd/Desktop/FTMP/include -I/usr/local/include")
		              (:exec    . ("%c -x c++ %o -o %e %s" "%e %a"))
		              (:compile-only . "%c -Wall %o -o %e %s")
		              (:remove  . ("%e"))
		              (:description . "Compile C++ file with llvm/clang++ and execute"))
  :override t)
(global-set-key (kbd "s-r") 'quickrun)
(global-set-key (kbd "s-b") 'quickrun-compile-only)

(defun other-window-or-split (n)
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window n))

(require 'bind-key)
(bind-key* "C-l" (lambda ()(interactive) (other-window-or-split 1)))

(global-set-key (kbd "C-S-l") (lambda ()(interactive) (other-window-or-split -1)))

(require 'mykie)
;; (mykie:global-set-key "C-q"
;;   :C-u     winner-redo
;;   :default winner-undo)
(setq mykie:use-major-mode-key-override t)
(mykie:initialize)

(require 'skk)
(require 'skk-hint)
(global-set-key (kbd "s-t") 'skk-mode)
(setq skk-server-host "localhost")
(setq skk-server-portnum 1178)(setq skk-kakutei-key (kbd "M-m"))
(setq skk-sticky-key "<clear>")


(require 'visual-regexp)
(global-set-key (kbd "M-%") 'vr/query-replace)

(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

(require 'tinysegmenter)
(require 'jaword)
(global-jaword-mode t)

;; (defun open-junk-directory ()
;;   (interactive)
;;   (direx:find-directory-other-window (file-name-directory (format-time-string open-junk-file-format (current-time)))))

;; (defun open-cpp-directory ()
;;   (interactive)
;;   (direx:find-directory-other-window "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1"))

(require 'projectile)
(projectile-mode 1)
(define-key projectile-mode-map (kbd "s-B") 'projectile-my-compile-project)
(define-key projectile-mode-map (kbd "C-x C-b") 'helm-projectile-find-file)

(defun projectile-my-compile-project ()
  (interactive)
  (let ((root (projectile-project-root)))
    (with-temp-buffer
      (cd (concat root "/cmake"))
      (compile "make"))))

(defun stack-init-junk (name)
  "Init stack project of `NAME' in junk dir."
  (interactive "sproject name:")
  (let ((junk-dir "~/junk"))
    (with-temp-buffer
      (cd junk-dir)
      (mkdir name)
      (cd name)
      (f-touch "Main.hs")
      (f-touch "LICENSE")
      (call-process "stack" nil nil nil "new" name)
      (find-file (format "%s/%s/Main.hs" junk-dir name))
      )))
;;-------------------
;; ;; anything
;; (require 'anything)
;; (require 'anything-config)

;; (setq anything-c-filelist-file-name "/tmp/filelist/all.filelist")
;; (setq anything-grep-candidates-fast-directory-regexp "^/tmp/filelist")

;;-------------------

(require 'imenu)
(require 'imenu-anywhere "imenu-anywhere.el")
(global-set-key (kbd "C-c i") 'helm-imenu)

(require 'ido)
(require 'ido-vertical-mode)
(require 'ido-better-flex)
(require 'ido-migemo)
(ido-vertical-mode t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(ido-migemo-mode t)
(require 'navi2ch)
(require 'navi2ch-mona)

(setq ido-everywhere nil)
(setq ido-create-new-buffer 'always)
(when (boundp 'confirm-nonexistent-file-or-buffer)
  (setq confirm-nonexistent-file-or-buffer nil))
(global-set-key (kbd "C-x f") 'ido-find-file-other-window)

;; (electric-pair-mode +1)

;;-------------------

(require 'ruby-mode)

(require 'inf-ruby)
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")
;; riなどのエスケープシーケンスを処理し,色付けする
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)
(define-key ruby-mode-map (kbd "C-.") 'company-robe)

;; (add-hook 'ruby-mode-hook 'inf-ruby)
(add-hook 'ruby-mode-hook 'robe-mode)

;;-------------------

(defun enclose-with-move (beg end)
  (interactive "r")
  (let ((str (format "std::move(%s)" (buffer-substring-no-properties beg end))))
    (delete-region beg end)
    (insert str)))
(define-key c++-mode-map (kbd "C-c C-'") (lambda ()(interactive) (enclose-with-move (region-beginning) (region-end))))


;;-------------------
;; org-agenda

(require 'org)
(require 'org-agenda)
;;; 時刻の記録をagendaに表示させる
(setq org-agenda-start-with-log-mode t)
;;; inbox.orgのサンプルにあわせ,今日から30日分の予定を表示させる
(setq org-agenda-span 30)
;;; org-agendaで扱うorgファイルたち
(setq org-agenda-files '("~/org-agenda/daily-projects.org" "~/org-agenda/todo.org"))
;;; C-c a aでagendaのメニューを表示する
;;; agendaには,習慣・スケジュール・TODOを表示させる

(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-custom-commands
      '(("a" "Agenda and all TODO's"
	       ((tags "project-CLOCK=>\"<today>\"|repeatable") (agenda "") (alltodo)))))
;;; <f6>で直接org習慣仕事術用agendaを起動させる
(defun org-agenda-default ()
  (interactive)
  (org-agenda nil "a")

  (delete-other-windows))
(global-set-key (kbd "<f6>") 'org-agenda-default)
(require 'org-agenda)
(define-key org-agenda-mode-map "j" 'evil-next-line)
(define-key org-agenda-mode-map "k" 'evil-previous-line)

;; org習慣の修正
(unless (member "CLOCK" org-special-properties)
  (defun org-get-CLOCK-property (&optional pom)
    (org-with-wide-buffer
     (org-with-point-at pom
       (when (and (derived-mode-p 'org-mode)
		              (ignore-errors (org-back-to-heading t))
		              (search-forward org-clock-string
				                          (save-excursion (outline-next-heading) (point))
				                          t))
	       (skip-chars-forward " ")
	       (cons "CLOCK"  (buffer-substring-no-properties (point) (point-at-eol)))))))

  (defadvice org-entry-properties (after with-CLOCK activate)
    "special-propertyにCLOCKを復活させorg習慣仕事術を最新版orgで動かす"
    (let ((it (org-get-CLOCK-property (ad-get-arg 0))))
      (setq ad-return-value
	          (if it
		            (cons it ad-return-value)
	            ad-return-value)))))

;; org-agenda-diary
(add-to-list 'org-agenda-custom-commands
	           '("D" agenda ""
	             (;; 1日分だけ表示する
		            (org-agenda-span 1)
		            ;; agenda各行の行頭のスペースをなくす
		            (org-agenda-prefix-format '((agenda . "%?-12t% s")))
		            ;; グリッドを表示しない
		            (org-agenda-use-time-grid nil)
		            ;; clockを表示する
		            (org-agenda-start-with-log-mode t)
		            (org-agenda-show-log 'clockcheck)
		            ;; clockの総計を表でまとめる
		            (org-agenda-start-with-clockreport-mode t)
		            (org-agenda-clockreport-mode t))))

(defvar org-review-diary-file "~/org-demo/review-diary.org")
(defvar org-review-diary-use-follow-mode nil)


(require 'follow)
(defun org-review-diary ()
  (interactive)
  (find-file org-review-diary-file)     ; ファイルを開き
  (goto-char (point-max))               ; 末尾に移動し
  (recenter 0)                          ; 画面最上部に持っていき
  (when org-review-diary-use-follow-mode ;後述
    (follow-mode))
  (insert "* ")                         ;新しい見出し作成
  (save-excursion
    (org-insert-time-stamp (current-time) t t) ;現在時刻
    (insert "\n#+BEGIN_QUOTE\n")        ;QUOTEブロックで
    (let (org-agenda-sticky)            ;agendaを囲む
      (insert (save-window-excursion    ;裏でagenda (D)を
		            (org-agenda nil "D")    ;起動して
		            (unwind-protect
		                (buffer-string)     ;*Org Agenda*バッファの内容を
		              (kill-this-buffer))))) ;挿入してからバッファを削除
    (insert "#+END_QUOTE\n\n")))
;;-------------------
;;org-plot

(defun org-ctrl-c-ctrl-c-hook--plot ()
  "カーソル位置が表のときC-c C-cでグラフを表示させる"
  (save-excursion
    ;; カーソル位置がorgの表の内部ならば,表の直前行に移動する
    (unless (= (org-table-begin) (org-table-end))
      (goto-char (org-table-begin))
      (forward-line -1))
    (when (string-match "^\\s *#\\+\\(PLOT\\|\\(TBL\\)?NAME\\):" (thing-at-point 'line))
      (org-plot/gnuplot))
    ;; 表の整形なども行いたいので,後続の処理を行わせる
    nil))
(add-hook 'org-ctrl-c-ctrl-c-hook 'org-ctrl-c-ctrl-c-hook--plot)


;;-------------------
(global-set-key (kbd "C-M-v") 'scroll-other-window)
(global-set-key (kbd "C-M-V") 'scroll-other-window-down)
;;-------------------
;; ;;mwim
;; (require 'mwim)
;; (global-set-key (kbd "C-a") 'mwim-beginning-of-code-or-line)
;; (global-set-key (kbd "C-e") 'mwim-end-of-code-or-line)
;;-------------------

(require 'cus-edit)
(define-key custom-mode-map (kbd "j") 'next-line)
(define-key custom-mode-map (kbd "k") 'previous-line)

;;-------------------
(require 'ido-describe-bindings)
(global-set-key (kbd "<f1> b") 'ido-describe-bindings)

;;-------------------
(require 'helm-hoogle)

;;-------------------
(global-set-key (kbd "s-o") 'other-window)

;;-------------------
;; ;; swiper
(require 'swiper)
(global-set-key (kbd "C-s") 'swiper)
;;-------------------
;; helm-swoop
;; (require 'helm-swoop)
;; (global-set-key (kbd "C-s") 'helm-swoop-without-pre-input)
;;-------------------

(defun projectile-swoop ()
  (interactive)
  (helm-multi-swoop nil
		                (cl-loop
		                 for f in (projectile-current-project-files)
		                 collect (buffer-name (find-file-noselect (concat (projectile-project-root) f) t)))))

;;-------------------
;; scheme
(defun open-sicp ()
  (interactive)
  (eww "file:///Users/shomasd/Desktop/SICP/xcont.html"))

(require 'scheme)
(add-hook 'scheme-mode-hook (lambda ()
			                        (paredit-mode t)
			                        (flycheck-mode t)))
(add-to-list 'auto-mode-alist '("\\.pddl$" . scheme-mode))
(flycheck-define-checker guile
  "A scheme syntax checker using guile."
  :command ("guile" "--auto-compile" source)
  :error-patterns
  ((error line-start
	        "ERROR: " (message) ": " (file-name) ":" line ":" column ":" (message)
          line-end)
   (warning line-start
	          ";;; "(file-name) ":" line ":" column ": " "warning: "(message)

	          line-end)
   (error line-start
	        ";;; "(file-name) ":" line ":" column ": " (message)
          line-end)
   (error line-start
	        (file-name) ":" line ":" column ":" (message)
          line-end))
  :modes (scheme-mode))
(add-to-list 'flycheck-checkers 'flycheck-guile)
()

(require 'geiser-mode)
(add-hook 'geiser-mode-hook 'paredit-mode)
(define-key geiser-mode-map (kbd "C-c C-z") 'geiser-set-scheme)
(define-key geiser-mode-map (kbd "C-c C-s") 'switch-to-geiser)
(add-hook 'geiser-mode-hook
	        (lambda ()
	          (setq-local company-backends '(geiser-company-backend :with company-dabbrev))))
(define-key geiser-mode-map (kbd "C-.") 'company-complete)

;;-------------------
;; ruby
(require 'robe)


;; (setq rct-find-tag-if-available nil)
;; (defun ruby-mode-hook-rcodetools ()
;;   (define-key ruby-mode-map (kbd "<C-tab>") 'rct-complete-symbol)
;;   (define-key ruby-mode-map (kbd "<C-return>") 'xmp))
;; (add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)

(defun xmp-insert ()
  (interactive)
  (save-excursion
    (goto-char (point-at-eol))
    (insert "# =>")
    ))



(defun make-ruby-scratch-buffer ()
  (with-current-buffer (get-buffer-create "*ruby scratch*")
    (ruby-mode)
    (current-buffer)))
(defun ruby-scratch ()
  (interactive)
  (pop-to-buffer (make-ruby-scratch-buffer)))
;;-------------------

(require 'fcopy)

(require 'mykie)
(require 'ace-jump-mode)

(setq ace-jump-word-mode-use-query-char nil)

(defun ace-jump-prog-mode ()
  (interactive)
  (ace-jump-do "\\_<.\\|\\s("))

(defadvice ace-jump-do (after add-keys activate)
  "ace-jump-modeでのキー割り当て"
  (dolist (k '(  "C-f" "C-b" "C-M-f" "C-M-b" "C-M-u" "C-p" "C-n" "C-a" "C-e" "C-v" "M-v" "M-f" "M-b" "M-a" "M-e" "M-<" "M->" "C-s" "C-r"))
    (define-key overriding-local-map (kbd k)
      (lexical-let ((cmd (key-binding (kbd k))))
	      (lambda ()
	        (interactive)
	        (call-interactively cmd)
	        (ace-jump-done)))))
  (define-key overriding-local-map (kbd "C-o")
    (lambda () (interactive) (ace-jump-done) (ace-jump-do "\n")))
  (define-key overriding-local-map (kbd "C-d") 'fcopy-toggle-delete))
(defun ace-jump-done-with-fcopy-quit ()
  (interactive)
  (ace-jump-done)
  (when fcopy-mode (fcopy-quit)))
(defadvice ace-jump-do (after fcopy-quit activate)
  (define-key overriding-local-map (kbd "C-g") 'ace-jump-done-with-fcopy-quit))


;; C-u C-o で ace-jump-fcopy
;; (mykie:global-set-key "C-o"
;;   :default ace-jump-word-mode
;;   :prog ace-jump-prog-mode
;;   :dired-mode ace-jump-line-mode
;;   :eshell-mode (ace-jump-do "[~/\"']\\|\\<\\sw")
;;   :C-u (progn (fcopy-mode 1) (call-interactively 'ace-jump-word-mode))
;;   :C-u&prog (progn (fcopy-mode 1) (ace-jump-prog-mode)))

;; ;;-------------------
;;direx
;; (require 'direx)

;; (add-hook 'direx:direx-mode-hook 'my-direx-mode-hook)

;; (define-key direx:direx-mode-map (kbd "W") 'direx:copy-path-of-item-at-point)
;; (define-key direx:direx-mode-map (kbd "G") 'direx:refresh-whole-tree)
;; (define-key direx:direx-mode-map (kbd "F") 'direx:create-file)

;; (defun ido-direx ()
;;   (interactive)
;;   (direx:find-directory-reuse-other-window (ido-read-directory-name "Direx:")))

;; (global-set-key (kbd "C-x C-j") 'ido-direx)
;; ;; (global-set-key (kbd "C-x C-j") 'direx:find-directory-other-window)
;; (global-set-key (kbd "C-x j") 'direx:jump-to-project-directory)

;; (defun direx:jump-to-project-directory ()
;;   (interactive)
;;   (let ((result (ignore-errors
;; 		  (direx-project:jump-to-project-root-other-window)
;; 		  t)))
;;     (unless result
;;       (direx:jump-to-directory-other-window))))

(require 'dired-open)
(setq dired-open-extensions
      '(("exe" . "wine")
	      ("docx" . "openoffice")
        ("doc" . "openoffice")
	      ("xlsx" . "openoffice")
        ("xls" . "openoffice")
	      ("html" . "firefox")
        ("mp3" . "mpv")
        ("mp4" . "mpv")
        ("flv" . "mpv")
        ))

;;------------------

(require 'remember)
(defun my-remember-inhibit-save ()
  (interactive)
  (message "Can't save this buffer. Use C-c C-c instead."))

(define-key remember-mode-map (kbd "C-x C-s") 'my-remember-inhibit-save)
(define-key remember-mode-map (kbd "s-s") 'my-remember-inhibit-save)

;;-------------------

(defun power(i)
  (if (equal i 1)
      1
    (* i (power (- i 1)))))

(defun exponentiation (base ind)
  (if (equal ind 0)
      1
    (* base (exponentiation base (- ind 1)))))

;;-------------------
(defun open-qrinput ()
  (interactive)
  (let* ((orig-name (buffer-file-name))
	       (qrinput-file-name (format "%s.qrinput" orig-name)))
    (when (not (f-exists-p qrinput-file-name))
	    (f-touch qrinput-file-name))
    (find-file qrinput-file-name)
    )
  )

;;-------------------
;; prettify control-l
(require 'form-feed)
(add-hook 'emacs-lisp-mode-hook (lambda () (form-feed-mode t)))

(menu-bar-mode -1)

(require 'names)
(defun eval-current-ns ()
  "eval current namespace"
  (interactive)
  (save-excursion
    (re-search-backward (rx (and "(" (* " ") "define-namespace"))
    (forward-sexp)
    (eval-last-sexp t))))

(add-to-list 'company-backends 'company-cabal)
(require 'company-cabal)
(defun company-cabal-clear-cache ()
  (interactive)
  (setq company-cabal--packages nil))

;;-------------------
;;org-babel
(require 'org)
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((R . t)
;;    (emacs-lisp . t)
;;    (gnuplot . t)
;;    (haskell . t)
;;    (python . t)
;;    (ruby . t)
;;    (screen . t)
;;    (sh . t)
;;    (sqlite . t)
;;    (perl . t)
;;    (dot . t)))

(defun open-cenron-org ()
  (interactive)
  (find-file "~/Desktop/cenron/cenron.org"))

;;-------------------
;; graphviz
(require 'graphviz-dot-mode)

(defun my-graphviz-dot-compile ()
  (interactive)
  (save-buffer)
  (call-process-shell-command compile-command)
  (graphviz-dot-preview))

(define-key graphviz-dot-mode-map (kbd "C-c c") 'my-graphviz-dot-compile)

(eval-after-load 'org-mode
  (add-to-list 'org-src-lang-modes  '("dot" . graphviz-dot)))

;;-------------------
(require 'apples-mode)
(add-to-list 'auto-mode-alist '("\\.scpt" . apples-mode))


;;-------------------

(require 'ido-skk)
;; (ido-skk-mode +1)

;;-------------------
;; scala
(require 'scala-mode2)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(setq ensime-startup-snapshot-notification nil)
(setq ensime-startup-notification nil)
(defun my-scala-mode-hook ()
  (smartparens-mode)
  (yas-minor-mode)
  (setq-local company-backends '(ensime-company :with company-dabbrev)))
(define-key scala-mode-map (kbd "C-.") 'ensime-company)

;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
(define-key company-active-map [tab] nil)

(add-hook 'scala-mode-hook 'my-scala-mode-hook)

(define-key scala-mode-map (kbd "C-c C-t") 'ensime-type-at-point)
(require 'sbt-mode)
(add-hook 'sbt-mode-hook
	        (lambda () (smartparens-mode +1)))
(defun my-sbt-beginning-of-line ()
  (interactive)
  (beginning-of-line)
  (re-search-forward (rx (* (not blank)) "> ")))

(define-key sbt:mode-map (kbd "C-a") 'my-sbt-beginning-of-line)

(defun my-ensime-sbt-console ()
  (interactive)
  (ensime-sbt-switch)
  (insert "console\n"))
(define-key ensime-mode-map (kbd "C-c C-b C-r") 'my-ensime-sbt-console)
;;-------------------
;; helm-img-tiqav
;; (require 'helm-img-tiqav)

;;-------------------
;; sourcekitten
(require 'swift-mode)
;; (add-to-list 'load-path "~/.emacs.d/myel/auto-complete-swift")
;; (require 'auto-complete-swift)
;; (add-hook 'swift-mode-hook (lambda () (company-mode -1)))
;; (add-hook 'swift-mode-hook 'auto-complete-mode)
;; (push 'ac-source-swift-complete ac-sources)

(require 'company-sourcekit)
(add-to-list 'company-backends 'company-sourcekit)

;;-------------------
;; html xml and so on
(cl-loop for ext in '("\\.tpl" "\\.scala.html")
	       do (add-to-list 'auto-mode-alist `(,ext . web-mode)))


;;-------------------
(require 'sql)


;;-------------------
;; java

(require 'meghanada)
(require 'flycheck-meghanada)
(define-key java-mode-map (kbd "C-.") 'company-manual-begin)

(add-hook 'java-mode-hook (lambda ()
			                      ;; (meghanada-mode +1)
			                      (flycheck-mode +1)
			                      (smartparens-mode +1)
			                      (setq-local company-minimum-prefix-length 1)
			                      (setq-local company-idle-delay 0)
			                      ))

;;-------------------
;; ;;; org-mobile
;; (require 'org-mobile)
;; ;; Set to the location of your Org files on your local system
;; (setq org-directory "~")
;; ;; Set to the name of the file where new notes will be stored
;; (setq org-mobile-inbox-for-pull "~/flagged.org")
;; ;; Set to <your Dropbox root directory>/MobileOrg.
;; (setq org-mobile-directory "~/Dropbox/MobileOrg")

;; (setq org-mobile-files '("~/notes.org"))

;; (add-hook 'after-init-hook 'org-mobile-pull)
;; (add-hook 'kill-emacs-hook 'org-mobile-push)

                                        ;------------
;; yesod template

(require 'shakespeare-mode)

(defun shakespeare-visit-widget-file (point)
  (interactive "d")
  (save-excursion
    (let* ((begin (progn
		                (re-search-backward (rx "$("))
		                (forward-char 2)
		                (point)))
	         (end (progn
		              (backward-char)
		              (forward-sexp)
		              (backward-char)
		              (point)))
	         (template-hs-expr (buffer-substring-no-properties begin end))
	         (widget-file-name
	          (with-temp-buffer
	            (insert template-hs-expr)
	            (goto-char (point-max))
	            (let* ((end (re-search-backward (rx "\"")))
		                 (begin (progn
			                        (re-search-backward (rx "\""))
			                        (forward-char)
			                        (point)))
		                 (widgetname (buffer-substring-no-properties begin end)))
		            (find-file (format "../templates/%s.hamlet" widgetname))
		            )))))))


(define-derived-mode shakespeare-cassius-mode shakespeare-lucius-mode "cassius"
  ;; (font-lock-add-keywords nil '(shakespeare-cassius-font-lock-keywords))
  (setq-local indent-line-function 'shakespeare-hamlet-mode-indent-line)
  (define-key shakespeare-lucius-mode-map (kbd "<backtab>") 'shakespeare-hamlet-backtab)
  (define-key shakespeare-lucius-mode-map (kbd "<RET>") 'shakespeare-hamlet-mode-newline-and-indent))

(add-to-list 'auto-mode-alist '("\\.cassius" . shakespeare-cassius-mode))

                                        ;------------
;; open websites

(defun open-wolframalpha ()
  (interactive)
  (call-process-shell-command (format "open http://wolframalpha.com/")))

(defun open-stackage ()
  (interactive)
  (call-process-shell-command (format "open http://stackage.org")))

                                        ;------------
;;tramp ssh
(require 'tramp)
(setq tramp-default-method "ssh")
(add-to-list 'tramp-default-proxies-alist
             '("rollot" "shomasd" "/ssh:shomasd@laguiole.ueda.info.waseda.ac.jp:"))
(add-to-list 'tramp-default-proxies-alist
             '("rollot.ueda.info.waseda.ac.jp" "shomasd" "/ssh:shomasd@laguiole.ueda.info.waseda.ac.jp:"))

                                        ;------------
;; fuck off shift_jis!

(defun sjis2utf8 ()
  (interactive)
  (revert-buffer-with-coding-system 'shift_jis)
  (set-buffer-file-coding-system 'utf-8))

                                        ;------------
;; reindent whole buffer
(defun indent-buffer ()
  (interactive)
  (indent-region
   (point-min)
   (point-max)))

                                        ;------------
;; typescript
(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(require 'tide)
(defun my-typescript-mode-hook ()
  (setq indent-tabs-mode t)
  (setq typescript-indent-level 4)
  (tide-setup)
  (flycheck-mode t)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode t)
  (company-mode-on)
  (paredit-mode))

(add-hook 'typescript-mode-hook 'my-typescript-mode-hook)

(define-key typescript-mode-map (kbd "C-.") 'company-tide)
;;-----------
;; ejs mode

(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))


;;------------
;; text scale
(defalias 'zoomup 'text-scale-increase)
(defalias 'zoomdown 'text-scale-decrease)

                                        ;------------
;;coq
(add-to-list 'auto-mode-alist '("\\.v\\'" . coq-mode))
(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)

(require 'company-coq)
;; Open .v files with Proof-General's coq-mode


;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)
;; (eval-after-load 'coq
;;   (progn
;;     (define-key coq-mode-map (kbd "<down>") 'proof-assert-next-command-interactive)
;;     (define-key coq-mode-map (kbd "<up>") 'proof-undo-last-successful-command)))

(add-hook 'emacs-lisp-mode-hook
	        (lambda ()
	          (flycheck-mode t)
	          (setq flycheck-emacs-lisp-load-path load-path)
	          ))

;; (define-key coq-mode-map (kbd "C-.") 'company-manual-begin)
;;disable transpose lines
(global-unset-key (kbd "C-c C-k"))

;; rewrite ∀ to forall , → to -> and reindent.
(defun coq-reformat ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward (rx "∀") nil t)
      (replace-match "forall"))
    (goto-char (point-min))
    (while (re-search-forward (rx "→") nil t)
      (replace-match "->"))
    (indent-buffer)))

;; (eval-after-load 'coq
;;   (define-key coq-mode-map (kbd "S-v")
;;     (lambda (&optional arg)
;;       (interactive)
;;       (when (eq major-mode 'coq-mode)
;; 	(yank arg)
;; 	(coq-reformat)))))

                                        ;------------
;; ;; ivy
;; (require 'ivy)

;; (ivy-mode)
;; (setq ivy-use-virtual-buffers t)
;; ;; (global-set-key "\C-s" 'swiper)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "<f8>") 'ivy-resume)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x b") 'ivy-switch-buffer)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> l") 'counsel-load-library)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-c i") 'counsel-imenu)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

                                        ;------------
;; mode line

(setq mode-line-cleaner-alist
      '( ;; For minor-mode, first char is 'space'
        (yas-minor-mode . " Ys")
        (paredit-mode . " ParEd")
        (eldoc-mode . "")
        (abbrev-mode . "")
        (undo-tree-mode . " UT")
        (elisp-slime-nav-mode . " EN")
        (helm-gtags-mode . " HG")
        (flymake-mode . " Fm")
        (flycheck-mode . " Fly")
        (magit-auto-revert-mode . "")
        ;; Major modes
        (lisp-interaction-mode . "Li")
        (python-mode . "Py")
        (ruby-mode   . "Rb")
        (emacs-lisp-mode . "El")
        (markdown-mode . "Md")
        ))


(defun clean-mode-line ()
  (interactive)
  (cl-loop for (mode . mode-str) in mode-line-cleaner-alist
        do
        (let ((old-mode-str (cdr (assq mode minor-mode-alist))))
          (when old-mode-str
            (setcar old-mode-str mode-str))
          ;; major mode
          (when (eq mode major-mode)
            (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)

;; js2-mode
(require 'js2-mode)
(define-key js2-mode-map (kbd "M-n") 'js2-next-error)
(define-key js2-mode-map (kbd "C-c C-t") 'tern-get-type)

(defun my-js2-mode-hook ()
  (tern-mode 1)
  (add-to-list 'company-backends 'company-tern)
  (setq indent-tabs-mode t))
(add-hook 'js2-mode-hook 'my-js2-mode-hook)

;; magit
(require 'magit)
(global-set-key [f5] 'magit-status)


;; origami-mode
(global-origami-mode 1)
(with-eval-after-load 'evil-maps
  (define-key evil-normal-state-map (kbd "TAB") 'origami-toggle-node))

;; plantuml
(require 'plantuml-mode)


;; 実験用
(defun mega (x)
  (* x 1000.0 1000.0))

(defun kilo (x)
  (* x 1000.0))

(defun mili (x)
  (/ x 1000.0))

(defun micro (x)
  (/ x 1000.0 1000.0))
(micro 1)

(defun nano (x)
  (/ x 1000.0 1000.0 1000.0))

(require 'dash)
(defun mymean (xs)
  (/ (-sum xs) (length xs)))
                                        ;------------
;; computer-arch
(defun run-simulation ()
  (interactive)
  (compile "iverilog -s  testbench -o testbench *.v ;and vvp testbench"))

                                        ;------------
;; spotlight
(require 'spotlight)
(global-set-key (kbd "C-x C-o") 'spotlight)
                                        ;------------
;; eshell
(require 'eshell)
(require 'shell-pop)
(add-hook 'eshell-mode-hook
	        (lambda ()
	          (setq pcomplete-ignore-case t)))


                                        ;------------
;; rust
(require 'rust-mode)
(eval-after-load "rust-mode" '(require 'racer))
(setq racer-rust-src-path "~/rust/src")
(setq racer-cmd "~/.cargo/bin/racer")

(defun my-rust-mode-hook ()
  (racer-mode)
  (eldoc-mode)
  (company-mode))


(add-hook 'rust-mode-hook 'my-rust-mode-hook)

(define-key racer-mode-map (kbd "C-c C-t") 'racer-describe)
(define-key rust-mode-map (kbd "s-b")
  (lambda () (interactive)
    (compile "cargo build")))
(define-key rust-mode-map (kbd "s-r")
  (lambda () (interactive)
    (compile "cargo run")))

(require 'company-racer)
(define-key rust-mode-map (kbd "C-.") 'company-racer)
(add-hook 'rust-mode-hook
	        (lambda ()
	          (setq-local company-backends '((company-racer :with company-dabbrev)))
	          (setq-local company-tooltip-align-annotations t)
	          (eldoc-mode 1)
	          (flycheck-mode 1)
	          (smartparens-mode 1)))
(key-combo-define rust-mode-map (kbd ";") '(";" "::"))


                                        ;------------

;; new-frame elscreen

(defun new-frame-to-elscreen (fn &rest args)
  (elscreen-create))

(advice-add 'new-frame :around 'new-frame-to-elscreen)
(advice-remove 'new-frame 'new-frame-to-elscreen)
                                        ;------------
;; sml

(require 'sml-mode)

(add-hook 'sml-mode-hook
	        (lambda ()
	          (smartparens-mode 1)))
                                        ;------------
;;lmntal-mode
(require 'lmntal-mode)
(defun lmntal-compile-current-file ()
  (interactive)
  (let ((current-dir default-directory))
    (cd (expand-file-name "~/lmntal-compiler"))
    (call-process-shell-command (format "%s %s" "java -classpath ./bin/lmntal.jar:./lib/std_lib.jar -DLMNTAL_HOME=. runtime.FrontEnd --slimcode --hl" (expand-file-name (buffer-file-name))))
    (cd current-dir)))
(setq lmntal-home-directory     "~/Desktop/LaViT2_8_9/lmntal/"
      lmntal-slim-executable    "installed/bin/slim"
      lmntal-graphene-executable "graphene/graphene.jar")
(add-to-list 'auto-mode-alist  '("\\.lmn\\'" . lmntal-mode))
(setq lmntal-graphene-executable "~/Desktop/lavit/lmntal/graphene/graphene.jar")
                                        ;------------

;; (require 'bison-mode)

;; (defun my-bison-mode-hook ()
;;   (irony-mode -1))

;; (add-hook 'bison-mode-hook 'my-bison-mode-hook)

                                        ;------------

;;octave
(require 'octave)
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(defun my-octave-mode-hook ()
  (smartparens-mode)
  )
(define-key octave-mode-map (kbd "C-c C-l") 'octave-send-buffer)
(add-hook 'octave-mode-hook 'my-octave-mode-hook)


;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line

;;------------
;; recentf
(require 'recentf)
(setq recentf-max-saved-items 2000) ;; 2000ファイルまで履歴保存する
(setq recentf-auto-cleanup 'never)  ;; 存在しないファイルは消さない
(setq recentf-exclude '("/recentf" "COMMIT_EDITMSG" "/.?TAGS" "^/sudo:" "/\\.emacs\\.d/games/*-scores" "/\\.emacs\\.d/\\.cask/"))
(setq recentf-auto-save-timer (run-with-idle-timer 200 t 'recentf-save-list))

(recentf-mode 0)
(bind-key "C-c t" 'helm-recentf)
(defun recentf-save-list-quiet (orig-func &rest args)
  (shut-up (apply orig-func args)))

;; (advice-add 'recentf-save-list :around 'recentf-save-list-quiet)

;;------------
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2) ; Assuming you want your tabs to be four spaces wide
(defvaralias 'c-basic-offset 'tab-width)

;;------------
;; elm

(require 'elm-mode)

(defun my-elm-mode-hook ()
  (setq-local company-backends '((company-elm :with company-dabbrev)))
  (flycheck-mode 1)
  (flycheck-elm-setup))

(add-hook 'elm-mode-hook 'my-elm-mode-hook)

;;------------
;; whitespaces
(defun delete-trailing-whitespaces-dwim ()
  (interactive)
  (save-excursion
    (delete-trailing-whitespace (point-min) (point-at-bol))
    (forward-line)
    (delete-trailing-whitespace (point-at-bol) (point-max))))

(global-whitespace-mode -1)

;;------------
(require 'asm-mode)
(add-to-list 'auto-mode-alist '("\\.s$" . asm-mode))
;;------------

(require 'promela-mode)
(add-to-list 'auto-mode-alist '("\\.pml\\'" . promela-mode))
(quickrun-add-command
  "spin" '((:command . "spin")
		       (:exec    . ("%c %s"))
		       (:compile-only . "%c -a -v %s")
		       (:remove  . ("%e"))
		       (:description . "run promela code with spin")
           )
  :mode 'promela-mode)

;;hide scroll-bar
(when (eq window-system  'ns)
  (scroll-bar-mode -1))

;;; impcompiler output to asm
(defun toasm ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward (rx "\"),asm(\"") nil t)
      (replace-match "\")\nasm(\""))
    (goto-char (point-min))
    (while (re-search-forward (rx "asm(\"" (submatch (*? nonl)) "\",\"" (submatch (*? nonl)) "\",\"" (submatch (*? nonl)) "\")") nil t)
      (replace-match (format "%s %s , %s" (match-string 1) (match-string 2) (match-string 3))))
    (goto-char (point-min))
    (while (re-search-forward (rx "asm(\"" (submatch (*? nonl)) "\",\"" (submatch (*? nonl)) "\")") nil t)
      (replace-match (format "%s %s" (match-string 1) (match-string 2))))
    (goto-char (point-min))
    (while (re-search-forward (rx "asm(\"" (submatch (*? nonl)) "\")") nil t)
      (replace-match (format "%s" (match-string 1))))
    ))

;;------------
(global-display-line-numbers-mode 1)

;;------------
;;server for emacsclient
(server-start)
(smartparens-global-mode 1)

;;-------------------
;; neotree
(require 'neotree)
(add-hook 'neotree-mode-hook
          (lambda ()
            (evil-local-mode 1)
            (evil-local-mode -1)
            (display-line-numbers-mode -1)))
(global-set-key (kbd "C-x C-j") 'neotree-toggle)
(global-set-key (kbd "C-x j") 'neotree-projectile-action)

(define-key neotree-mode-map (kbd "k") 'previous-line)
(define-key neotree-mode-map (kbd "j") 'next-line)
(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
            (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
            (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
            (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
            (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))
(setq neo-persist-show t)
(when neo-persist-show
  (add-hook 'popwin:before-popup-hook
            (lambda () (setq neo-persist-show nil)))
  (add-hook 'popwin:after-popup-hook
            (lambda () (setq neo-persist-show t))))

;;; thesis
(defun thesis-replace-commas-and-dots ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "。" nil t)
      (replace-match ". "))
    (goto-char (point-min))
    (while (re-search-forward "、" nil t)
      (replace-match ", "))))

(defun toggle-dump ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward (rx bol (submatch (* "\t" " ") "dump" (* nonl)) eol) nil t)
      (replace-match "// \1"))
    )
  )

(run-with-idle-timer 2 t (lambda () (garbage-collect)))
(setq gc-cons-threshold (* 1024 1024 1024))

(provide 'init)
;;; init.el ends here
