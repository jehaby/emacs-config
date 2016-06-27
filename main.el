(setq load-path (cons "~/Dropbox/configs/emacs/common" load-path))
(load "functions.el") ;
(load "keys.el") ;


;;; short yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;;; automatically reloads any file changed on disk
(global-auto-revert-mode t)



;;; melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)



; ask before closing end
(when window-system
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))


(add-auto-mode 'web-mode
               "*html*" "*twig*" "*tmpl*" "\\.erb" "\\.rhtml$" "\\.ejs$" "\\.hbs$"
               "\\.ctp$" "\\.tpl$" "/\\(views\\|html\\|templates\\)/.*\\.php$")

(add-auto-mode 'markdown-mode
	       "*.md")

;;(add-to-list 'default-frame-alist '(font . "Droid Sans Mono-11" ))
;;(set-face-attribute 'default t :font "Droid Sans Mono-11" )

(setq default-input-method "russian-computer")
(server-start)
(menu-bar-mode -1)
(tool-bar-mode -1)


;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

; (require 'go-autocomplete)
;(require 'auto-complete-config)
; (ac-config-default)
