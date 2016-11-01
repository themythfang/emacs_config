;; Basic encoding
(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8-mac) ; For old Carbon emacs on OS X only
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(unless (eq system-type 'windows-nt)
  (set-selection-coding-system 'utf-8))
(prefer-coding-system 'utf-8)

(defun c-lineup-streamop (langelem)
  ;; lineup stream operators
  (save-excursion
    (let* ((relpos (cdr langelem))
           (curcol (progn (goto-char relpos)
                          (current-column))))
      (re-search-forward "<<\\|>>" (c-point 'eol) 'move)
      (goto-char (match-beginning 0))
      (- (current-column) curcol))))

(defun yf-basic-setting ()
  (global-set-key (kbd "C-c C-g") 'rgrep)
  (global-set-key (kbd "C-x C-i") 'previous-buffer)
  (global-set-key (kbd "C-x C-o") 'next-buffer)
  (global-set-key (kbd "C-x C-h") 'recentf-open-files)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'stream-op 'c-lineup-streamop)
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
