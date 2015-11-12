;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:
(require-package-load 'magit)

(global-set-key (kbd "M-<f12>") 'magit-status)
(setq-default magit-completing-read-function 'ivy-completing-read)

(provide 'init-magit)

;;; init-magit.el ends here
