;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'helm)
(require-package-load 'helm-package)

(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x f") 'helm-for-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-c i") 'helm-imenu)
(global-set-key (kbd "C-x i") 'package-install)

;; do not ask when trying to create new file
(setq-default helm-ff-newfile-prompt-p nil)

(provide 'init-helm)

;;; init-helm.el ends here
