;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

;; Disable yasnippet auto indenting for haskell-mode
;; https://github.com/haskell/haskell-mode/issues/719#issuecomment-231412853

(defun set-yasnippet-fixed-indent ()
  (setq-local yas-indent-line 'fixed))
(add-hook 'haskell-mode-hook #'set-yasnippet-fixed-indent)

(provide 'init-haskell)

;;; init-haskell.el ends here
