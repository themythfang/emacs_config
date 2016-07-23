(require 'prelude-lisp)
(prelude-require-packages '(function-args))


(require 'function-args)
(fa-config-default)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(set-default 'semantic-case-fold t)
(require 'semantic/bovine/c)
(add-to-list 'semantic-lex-c-preprocessor-symbol-file
             "/usr/lib/gcc/x86_64-linux-gnu/5.3.1/include/stddef.h")


(provide 'yf-function-args)
