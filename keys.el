;(global-set-key (kbd "C-o") 'other-window)
;(global-set-key (kbd "C-x o") 'open-line)


(setq revert-without-query '(".*"))
(global-set-key (kbd "C-c r") 'revert-buffer)


(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-x\C-b" 'buffer-menu)
(global-set-key "\C-x\M-f" 'find-name-dired)

(global-set-key "\C-c\C-r" 'rgrep)

;;; magit
(global-set-key (kbd "C-x g") 'magit-status)


(eval-after-load 'go-mode
  '(define-key go-mode-map [(kbd "C-c C-c")] 'comment-region))
