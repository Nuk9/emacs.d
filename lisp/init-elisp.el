;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package rainbow-delimiters
  :ensure t
  :init (rainbow-delimiters-mode 1))

;;; Add folder to flycheck
(setq-default flycheck-emacs-lisp-load-path 'inherit)
(setq-default flycheck-emacs-lisp-initialize-packages 'auto)

(show-paren-mode 1)

;;; add Elisp backends to company-mode
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (set (make-local-variable 'company-backends)
		 (add-to-list 'company-backends 'company-elisp))))

;;; in elisp, '' is not a pair
(setq-default ad-redefinition-action 'accept)

(provide 'init-elisp)

;;; init-elisp.el ends here
