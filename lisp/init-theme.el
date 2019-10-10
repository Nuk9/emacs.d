;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package all-the-icons
  :ensure t)
(use-package color-theme-solarized
  :ensure t)
(use-package doom-modeline
  :ensure t)
(use-package doom-themes
  :ensure t)

(defun xzhao/set-frame-theme (frame)
  "Set FRAME theme."
  (load-theme 'doom-solarized-light t)
  (doom-modeline-mode t))

(defun xzhao/set-frame-font (frame)
  "Set font of newly created FRAME."
  (if (eq system-type 'darwin)
    (if (display-graphic-p)
	(set-frame-font "Monaco 13" nil frame))
  (if (display-graphic-p)
      (set-frame-font "Cascadia Code-11" nil frame)))
 (dolist (charset '(kana han symbol cjk-misc bopomofo))
  (if (display-graphic-p)
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family "WenQuanYi Micro Hei" :size 14)))))

(xzhao/set-frame-font t)
(xzhao/set-frame-theme t)
;; set font and theme in emacsclient frame
(defadvice server-create-window-system-frame
    (after set-window-system-frame-colours ())
  "Setup frame font and theme in Emacs Server."
  (xzhao/set-frame-font t)
  (xzhao/set-frame-theme t))
(ad-activate 'server-create-window-system-frame)

;; Highlight TODO, NOTE, and FIXME tags
(require-package-load 'hl-todo)
(global-hl-todo-mode)

;; Test display of CJK fonts
;; いろはにほへとちにぬるを
;; 花朵艳丽终将散落，谁人世间能长久好

(provide 'init-theme)

;;; init-theme.el ends here
