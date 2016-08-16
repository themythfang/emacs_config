(defun yf-basic-setting ()
  (global-set-key (kbd "C-c C-g") 'rgrep)
  (global-set-key (kbd "C-x C-i") 'previous-buffer)
  (global-set-key (kbd "C-x C-o") 'next-buffer)
  (global-set-key (kbd "C-x C-h") 'recentf-open-files)
  (linum-mode t))
(setq yf-basic-hook 'yf-basic-setting)

(defun yf-basic-text-setting()
  (read-only-mode t))
(setq yf-basic-text-hook 'yf-basic-text-setting)

(add-hook 'prelude-mode-hook (lambda ()
                                (run-hooks 'yf-basic-hook)))
(add-hook 'prelude-c-mode-common-hook (lambda ()
                                (run-hooks 'yf-basic-text-hook)))

(provide'yf-basic)
