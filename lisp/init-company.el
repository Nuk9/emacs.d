;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq-default company-backends (delete 'company-semantic company-backends))

(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(provide 'init-company)

;;; init-company.el ends here
