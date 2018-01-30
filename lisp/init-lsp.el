;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package 'lsp-mode)

(with-eval-after-load 'lsp-mode
  (require 'lsp-flycheck))
;; lsp-cc
(require 'cc-mode)
(require 'cquery)
(setq-default cquery-executable "/home/xzhao/code/cquery/build/release/bin/cquery")
(setq-default cquery-sem-highlight-method 'overlay)
(setq-default cquery-sem-highlight-method 'font-lock)
(add-hook 'c-mode-hook #'lsp-cquery-enable)
(add-hook 'c++-mode-hook #'lsp-cquery-enable)

(provide 'init-lsp)

;;; init-lsp.el ends here
