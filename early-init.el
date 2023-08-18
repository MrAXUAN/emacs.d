;;; early-init.el ---   -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(when (or (featurep 'esup-child) 
           (fboundp 'profile-dotemacs) 
           (daemonp) 
           (boundp 'startup-now) 
           noninteractive) 
   (setq package-enable-at-startup nil)) 
  
 (defvar my-computer-has-smaller-memory-p nil 
   "Installing&Compiling many packages could cost too much memory.") 
  
;; @see https://www.reddit.com/r/emacs/comments/ofhket/further_boost_start_up_time_with_a_simple_tweak/ 
;; 10% speed up of startup for my configuration 
(unless my-computer-has-smaller-memory-p 
  (setq gc-cons-percentage 0.6) 
  (setq gc-cons-threshold most-positive-fixnum)) 
  
(setq inhibit-startup-message t) 
  
;; no menu bar, toolbar, scroll bar 
(setq default-frame-alist
      '((menu-bar-lines . 0) 
        (tool-bar-lines . 0) 
        (horizontal-scroll-bars) 
        (vertical-scroll-bars))) 

;; open line number
(global-display-line-numbers-mode t)
;; open highlight
(global-hl-line-mode 1)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode 1)

(provide 'early-init) 
;;; early-init.el ends here
