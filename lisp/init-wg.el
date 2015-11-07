;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'workgroups2)
(setq-default wg-session-file "~/sync/session/.emacs_workgroups")
(setq-default wg-prefix-key (kbd "C-c"))
(workgroups-mode 1)

(provide 'init-wg)

;;; init-wg.el ends here
