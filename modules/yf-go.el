(require 'prelude-lisp)
(prelude-require-packages '(go-autocomplete))

(prelude-require-packages '(flymake-go))
(add-hook 'go-mode-hook 'flycheck-mode)

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))

(provide 'yf-go)
;; (defun yf-basic-go-setting ()
;;   (yf-basic-setting)
;;   (setq-default c-basic-offset 4))
;; (setq yf-basic-go-hook'yf-basic-go-setting)

;; (add-hook 'go-mode-hook 'yf-basic-go-hook)
