;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require 'init-core)

(setq-default projectile-known-projects-file
	      (concat xumacs-private-dir "projects"))
(projectile-mode +1)

(provide 'init-projectile)

;;; init-projectile.el ends here
