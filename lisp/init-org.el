;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(add-hook 'org-mode-hook (lambda () (electric-pair-mode t)))
(add-hook 'org-mode-hook 'org-indent-mode)

(provide 'init-org)

;;; init-org.el ends here

