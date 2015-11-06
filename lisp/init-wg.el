;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(global-unset-key (kbd "C-v"))
(define-prefix-command 'wg-prefix)
(global-set-key (kbd "C-v") 'wg-prefix)
(require-package-load 'workgroups2)
(workgroups-mode)
(setq-default wg-prefix-key (kbd "C-v"))
(setq-default wg-session-file "~/sync/session/.emacs_wgs")

(provide 'init-wg)

;;; init-wg.el ends here
