;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

;;; Add folder to flycheck
(setq-default flycheck-emacs-lisp-load-path 'inherit)
(setq-default flycheck-emacs-lisp-initialize-packages 'auto)

;;; add Elisp backends to company-mode
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (set (make-local-variable 'company-backends)
		 (add-to-list 'company-backends 'company-elisp))))

(provide 'init-elisp)

;;; init-elisp.el ends here
