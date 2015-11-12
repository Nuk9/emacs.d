;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:


;;; Some useful shortcuts
;;; C-c p D open dired of project root
;;; C-c p v open magit-status of this project
;;; C-c p b open project buffers
;;; C-c p k kill all project buffers

(require-package-load 'projectile)
(projectile-global-mode)
(setq-default projectile-indexing-method 'alien)
(setq-default projectile-switch-project-action 'projectile-dired)

(setq-default projectile-completion-system 'ivy)

(helm-projectile-on)
(global-set-key (kbd "C-c f") 'projectile-find-file)

(provide 'init-projectile)

;;; init-projectile.el ends here
