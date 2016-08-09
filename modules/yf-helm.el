(defun yf-helm-setting ()
  (global-set-key (kbd "C-q b") 'helm-bookmark)
  (global-set-key (kbd "C-q r") 'helm-bookmark-rename)
  (global-set-key (kdb "C-q d") 'helm-bookmark-run-delete))

(setq yf-helm-hook' yf-helm-setting)

(provide 'yf-helm)
