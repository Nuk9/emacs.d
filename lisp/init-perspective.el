;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package-load 'perspective)
(persp-mode)

;; use persp mode with projectile
(require-package-load 'persp-projectile)
(defvar projectile-mode-map)
(define-key projectile-mode-map (kbd "C-c c")
  'projectile-persp-switch-project)

(provide 'init-perspective)

;;; init-perspective.el ends here
