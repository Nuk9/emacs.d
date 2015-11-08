;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'workgroups2)
(setq-default wg-prefix-key (kbd "C-c z"))
(setq-default wg-session-file "~/sync/session/.emacs_workgroups")
(workgroups-mode 1)

(require-package-load 'helm-projectile)

(provide 'init-wg)

;;; init-wg.el ends here
