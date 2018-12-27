;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

;; define variables
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(defvar emacs-private-dir
  (concat (file-truename user-emacs-directory) "private/")
  "Where your private customizations are placed.  Must end in a slash.")

;;
;; Emacs core configurations

;; UTF-8 as the default coding system
(when (fboundp 'set-charset-priority)
  (set-charset-priority 'unicode))     ; pretty
(prefer-coding-system        'utf-8)   ; pretty
(setq locale-coding-system   'utf-8)   ; please
(setq-default buffer-file-coding-system 'utf-8) ; with sugar on top

;; Default settings
(setq-default
 ;; be quiet on startup
 inhibit-startup-message t
 inhibit-default-init t
 inhibit-startup-echo-area-message (user-login-name)
 initial-major-mode 'org-mode
 initial-scratch-message nil
 ;; History & backup settings
 auto-save-default nil
 create-lockfiles nil
 history-length 500
 make-backup-files nil)

(provide 'init-core)

;;; init-core.el ends here
