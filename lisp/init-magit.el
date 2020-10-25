;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(use-package magit
  :ensure t)
(use-package evil-magit
  :ensure t)

(global-set-key (kbd "M-<f12>") 'magit-status)
(setq-default magit-completing-read-function 'ivy-completing-read)


(provide 'init-magit)

;;; init-magit.el ends here
