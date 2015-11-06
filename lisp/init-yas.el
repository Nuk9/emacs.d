;;; package -- summary
;;; Commentary:

;;; Code:

;;; (require-package 'yasnippet)
(setq yas-snippet-dirs nil)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))

(yas-global-mode 1)
(add-to-list 'auto-mode-alist '("\\.snippet\\'" . snippet-mode))

(provide 'init-yas)
;;; init-yas.el ends here
