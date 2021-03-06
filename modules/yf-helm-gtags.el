(require 'prelude-lisp)
(prelude-require-packages '(helm-gtags))

(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

(require 'helm-gtags)
;; Enable helm-gtags-mode
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)
(add-hook 'java-mode-hook 'helm-gtags-mode)

;; (define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
;; (define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-find-tag-from-here)
(define-key helm-gtags-mode-map (kbd "C-c C-f") 'helm-gtags-find-files)
;; (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-p") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-,") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-.") 'helm-gtags-next-history)
(define-key helm-gtags-mode-map (kbd "C-c C-r") 'helm-gtags-resume)
(define-key helm-gtags-mode-map (kbd "C-c C-u") 'helm-gtags-update-tags)
(define-key helm-gtags-mode-map (kbd "C-c C-s") 'helm-gtags-show-stack)

(provide 'yf-helm-gtags)
