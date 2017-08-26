(require-package 'elpy)

;; Fixing a key binding bug in elpy
;; (define-key yas-minor-mode-map (kbd "<TAB>") 'yas-expand)
(elpy-enable)

(provide 'init-python)
