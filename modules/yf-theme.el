(require 'prelude-lisp)

;; (load-file "~/.emacs.d/themes/ramangalahy.el")

(setq prelude-theme nil)
(load-file "~/.emacs.d/themes/autumn-light.el")
;; (require 'autumn-light)

;; (prelude-require-packages '(calmer-forest-theme))
;; (load-theme 'calmer-forest t)
;; (load-theme 'ramangalahy t)


(prelude-require-packages '(grep-a-lot))
(require 'grep-a-lot)

(provide 'yf-theme)
