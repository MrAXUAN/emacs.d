;;; init.el --- Load the full configuration

;;; Commentary:

;;; Code:

;; don't GC during startup to save time 
(unless (bound-and-true-p my-computer-has-smaller-memory-p)
  (setq gc-cons-percentage 0.6)
  (setq gc-cons-threshold most-positive-fixnum))

(add-to-list 'load-path (expand-file-name "lisp"))

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'init-elpa)
(require 'init-keymaps)
(require 'init-company)

(when (file-exists-p custom-file) 
  (load custom-file))

(provide 'init)

;;; init.el ends here
