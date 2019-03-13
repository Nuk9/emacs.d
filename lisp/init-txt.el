;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require 'company-dabbrev)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
(setq company-dabbrev-downcase nil)

(provide 'init-txt)

;;; init-txt.el ends here
