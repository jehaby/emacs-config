;; use hook because theme isn't loaded on startup
(add-hook 'after-init-hook (lambda () (load-theme 'idea-darkula t)))
