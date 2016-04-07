;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require 'init-elpa)

(require-package-load 'find-file-in-project)
(setq-default ffip-match-path-instead-of-filename t)
(global-set-key (kbd "C-x f") 'find-file-in-project)

(provide 'init-project)

;;; init-project.el ends here
