;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

;; define variables
(defvar xumacs-private-dir
  (or (getenv "XUMACSDIR")
      (let ((xdg-path
	     (expand-file-name "xumacs/"
			       (or (getenv "XDG_CONFIG_HHOME")
				   "~/.config"))))
	(if (file-directory-p xdg-path) xdg-path))
      "~/.xumacs.d/")
  "Where your private customizations are placed.  Must end in a slash.  Respects XDG directory conventions if ~/.config/xumacs/ exists.  Otherwise use ~/.xumacs.d/.")

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
 inhibit-startup-echo-area-message user-login-name
 inhibit-default-init t
 initial-major-mode 'org-mode
 initial-scratch-message nil
 ;; History & backup settings
 auto-save-default nil
 create-lockfiles nil
 history-length 500
 make-backup-files nil)


(provide 'init-core)

;;; init-core.el ends here
