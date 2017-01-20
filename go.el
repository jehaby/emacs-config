;; go get -u github.com/nsf/gocode
;; go get github.com/rogpeppe/godef
;; go get golang.org/x/tools/cmd/goimports


(setq homepath "/home/stas/")

(setenv "GOPATH" (concat homepath "coding/go/"))

(add-to-list 'exec-path (concat homepath "coding/go/bin/"))


(eval-after-load 'go-mode 
  '(define-key go-mode-map (kbd "C-M-g") 'godef-jump))


(defun auto-complete-for-go ()
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)

(with-eval-after-load 'go-mode
  (require 'go-autocomplete))


(defun my-go-mode-hook ()
  
  (setq gofmt-command "goimports")
  
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
)
(add-hook 'go-mode-hook 'my-go-mode-hook)
