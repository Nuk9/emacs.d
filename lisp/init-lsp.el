;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)
;;; Code:

(require-package 'lsp-ui)
(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

(provide 'init-lsp)
;;; init-lsp.el ends here

