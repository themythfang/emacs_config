(defun yf-basic-setting ()
  (global-set-key (kbd "C-c C-g") 'grep-find)
  (global-set-key (kbd "C-x C-i") 'previous-buffer)
  (global-set-key (kbd "C-x C-o") 'next-buffer)
  (read-only-mode t)
  (linum-mode t))
(setq yf-basic-hook 'yf-basic-setting)

(add-hook 'prelude-mode-hook (lambda ()
                                (run-hooks 'yf-basic-hook)))

(provide'yf-basic)
