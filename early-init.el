;;; early-init.el --- -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(when (or (featurep 'esup-child)
	  (fboundp 'profile-dotemacs)
	  (daemonp)
	  (boundp 'startup-now)
	  noninteractive)
  (setq package-enable-at-startup nil))

(defvar my-computer-has-smaller-memory-p nil
  "Install&Compiling many packages could cost too much memory.")

(setq make-backup-files nil)

;; 10% speed up of startup for my configuration
(unless my-computer-has-smaller-memory-p
  (setq gc-cons-percentage 0.6)
  (setq gc-cons-threshold most-positive-fixnum))

(setq default-frame-alist
      '((menu-bar-lines . 0)
	(tool-bar-lines . 0)
	(horizontal-scroll-bars)
	(vertical-scroll-bars)))

(provide 'early-init)

;;; early-init.el ends here
