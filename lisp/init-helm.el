;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'helm)
(require-package-load 'helm-package)

(global-set-key (kbd "C-c i") 'helm-imenu)

;; do not ask when trying to create new file
(setq-default helm-ff-newfile-prompt-p nil)

(provide 'init-helm)

;;; init-helm.el ends here
