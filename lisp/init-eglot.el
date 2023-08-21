
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "ccls"))
(add-hook 'c-mode-hook #'eglot-ensure)
(add-hook 'c++-mode-hook #'eglot-ensure)
(add-hook 'python-mode-hook #'eglot-ensure)

(provide 'init-eglot)
