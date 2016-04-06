;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(require-package 'evil)
(evil-mode 1)

(require-package 'key-chord)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(setq-default key-chord-two-keys-delay 0.1)
(key-chord-mode 1)


(require-package 'vim-empty-lines-mode)
(add-hook 'after-init-hook 'vim-empty-lines-mode)

(require-package 'powerline)
(require-package 'airline-themes)
(require 'airline-themes)
(load-theme 'airline-solarized-alternate-gui)

(provide 'init-evil)

;;; init-evil.el ends here
