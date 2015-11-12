;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'projectile)
(projectile-global-mode)
(setq-default projectile-indexing-method 'alien)
(setq-default projectile-switch-project-action 'projectile-dired)

(require-package-load 'grizzl)
(setq-default projectile-completion-system 'grizzl)

(helm-projectile-on)
(global-set-key (kbd "C-c f") 'projectile-find-file)

(provide 'init-projectile)

;;; init-projectile.el ends here
