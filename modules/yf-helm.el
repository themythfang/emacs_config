(defun yf-helm-setting ()
  (global-set-key (kbd "C-q") nil)
  (global-set-key (kbd "C-q C-q") 'helm-bookmarks)
  (global-set-key (kbd "C-q C-r") 'helm-bookmark-rename)
  (global-set-key (kbd "C-q C-d") 'bookmark-delete))
(setq yf-helm-hook' yf-helm-setting)

(provide 'yf-helm)
