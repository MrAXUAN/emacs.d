;;; init.el --- -*- coding: utf-8; lexical-binding: t; -*-

;;; Commentry:

;;; Code:

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))

(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

;; enable lines numbers
(global-display-line-numbers-mode t)

(require 'init-elpa)

;; don't GC during startup to save time
(unless (bound-and-true-p my-computer-has-smaller-memory-p)
  (setq gc-cons-percentage 0.6)
  (setq gc-cons-threshold most-positive-fixnum))

(require 'init-eglot)
(require 'init-yasnippet)
(require 'init-company)
(require 'init-treemacs)

(defconst my-emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d.")

(defconst my-lisp-dir (concat my-emacs-d "lisp")
  "Directory of personal configuration.")

;; Light weight mode, fewer packages are used.
(setq my-lightweight-mode-p (and (boundp 'startup-now) (eq startup-now t)))

(when (file-exists-p custom-file)
  (load custom-file))

;;; Local Variables:
;;; no-byte-compile: t
;;; End:
