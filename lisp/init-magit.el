;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(global-set-key (kbd "M-<f12>") 'magit-status)
(setq-default magit-completing-read-function 'ivy-completing-read)

(use-package evil-magit
  :ensure t)

(provide 'init-magit)

;;; init-magit.el ends here
