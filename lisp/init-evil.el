;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package 'evil)
(add-hook 'after-init-hook 'evil-mode)

(require-package 'vim-empty-lines-mode)
(add-hook 'after-init-hook 'vim-empty-lines-mode)

(require-package 'powerline)
(require-package 'airline-themes)
(require 'airline-themes)
(load-theme 'airline-solarized-alternate-gui)

(provide 'init-evil)

;;; init-evil.el ends here
