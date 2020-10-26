;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package rainbow-delimiters
  :ensure t
  :init (add-hook 'emacs-lisp-mode-hook (lambda () (rainbow-delimiters-mode 1))))

;;; Add folder to flycheck
(setq-default flycheck-emacs-lisp-load-path 'inherit)
(setq-default flycheck-emacs-lisp-initialize-packages 'auto)

;;; Show matching parenthesis
(show-paren-mode 1)

;;; Add Elisp backends to company-mode
(require 'company)
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (set (make-local-variable 'company-backends)
		 (add-to-list 'company-backends 'company-elisp))))

(setq-default ad-redefinition-action 'accept)

(provide 'init-elisp)

;;; init-elisp.el ends here
