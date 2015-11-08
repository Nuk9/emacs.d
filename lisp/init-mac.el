;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:


(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'control)
  (setq mac-control-modifier 'super)
  ;; (setenv "PATH" (concat (getenv "PATH") ":~/bin:/usr/local/bin"))
  ;; (setq exec-path (append exec-path '("~/bin" "/usr/local/bin")))
  (setq-default insert-directory-program (executable-find "gls"))
  (if (display-graphic-p)
      (set-frame-font "Consolas 13" nil t)))

(when (eq window-system 'ns)
  (defadvice ns-get-pasteboard (around hack-empty-pasteboard compile activate)
    (condition-case err
        ad-do-it
      (quit (message "%s" (cadr err))
            nil))))

(provide 'init-mac)

;;; init-mac.el ends here
