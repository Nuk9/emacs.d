;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init-flycheck)

;;; init-flycheck.el ends here
