;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package recentf
  :ensure t
  :init (recentf-mode 1))

(setq-default recentf-max-menu-items 25)

(provide 'init-recentf)

;;; init-recentf.el ends here
