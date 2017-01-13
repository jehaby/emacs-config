(setq homepath "/home/stas/")

(setenv "GOPATH" (concat homepath "coding/go/"))

(add-to-list 'exec-path (concat homepath "coding/go/bin/"))

(add-hook 'before-save-hook #'gofmt-before-save)

(eval-after-load 'go-mode 
  '(define-key go-mode-map (kbd "C-M-g") 'godef-jump))
