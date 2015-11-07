;;; package -- summary
;;; Commentary:
;;; Configs for smartparens
;;; To use SP, electic-pairs-mode need to be disabled.
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode t)

(global-set-key (kbd "C-<left>") 'sp-beginning-of-sexp)
(global-set-key (kbd "C-<right>") 'sp-end-of-sexp)
(global-set-key (kbd "C-<up>") 'sp-up-sexp)
(global-set-key (kbd "C-<down>") 'sp-down-sexp)

(provide 'init-sp)
;;; init-sp.el ends here
