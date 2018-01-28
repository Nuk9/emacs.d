;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:


(require-package 'lsp-mode)

(with-eval-after-load 'lsp-mode
  (require 'lsp-flycheck))
;; lsp-cc
(require 'cquery)
(setq-default cquery-executable "/home/xzhao/code/cquery/build/release/bin/cquery")

(setq-default cquery-sem-highlight-method 'overlay)
(setq-default cquery-sem-highlight-method 'font-lock)

(provide 'init-lsp)

;;; init-lsp.el ends here
