;;; package -- summary
;;; Commentary:

;;; Code:

(use-package yasnippet
  :ensure t)

;;; set yas-snippet-dirs first to avoid loading redundant default snippets
(setq-default yas-snippet-dirs '("~/.emacs.d/snippets"))

(yas-global-mode 1)
(add-to-list 'auto-mode-alist '("\\.snippet\\'" . snippet-mode))

(provide 'init-yas)
;;; init-yas.el ends here
