(defun yf-basic-setting ()
  (global-set-key (kbd "C-c C-g") 'grep-find)
  (read-only-mode t)
  (linum-mode t))

(setq yf-basic-hook 'yf-basic-setting)
(provide'yf-basic)
