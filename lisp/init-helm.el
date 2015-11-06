;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; do not ask when trying to create new file
(setq-default helm-ff-newfile-prompt-p nil)

(provide 'init-helm)

;;; init-helm.el ends here
