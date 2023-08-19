;;; init.el --- -*- coding: utf-8; lexical-binding: t; -*-

;;; Commentry:

;;; Code:


(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

;; don't GC during startup to save time
(unless (bound-and-true-p my-computer-has-smaller-memory-p)
  (setq gc-cons-percentage 0.6)
  (setq gc-cons-threshold most-positive-fixnum))

(defconst my-emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d.")

(defconst my-lisp-dir (concat my-emacs-d "lisp")
  "Directory of personal configuration.")

;; Light weight mode, fewer packages are used.
(setq my-lightweight-mode-p (and (boundp 'startup-now) (eq startup-now t)))

;;; Local Variables:
;;; no-byte-compile: t
;;; End:
