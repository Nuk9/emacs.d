;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(use-package all-the-icons
  :ensure t)
(use-package color-theme-sanityinc-solarized
  :ensure t)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
(use-package doom-themes
  :ensure t)

;; (defun xzhao/set-frame-theme (frame)
;;   "Set FRAME theme."
;;   (if (display-graphic-p)
;;       (progn
;;         (load-theme 'doom-solarized-dark t)
;;         (doom-modeline-mode t))
;;     (progn
;;       (load-theme 'doom-ephemeral t)
;;       (doom-modeline-mode t))))
(defvar xz-theme-window 'doom-solarized-dark)
(defvar xz-theme-term 'doom-ephemeral)
(defvar xz-theme-window-loaded nil)
(defvar xz-theme-term-loaded nil)
(defun xz/load-theme (theme)
  "Load the specified THEME."
  (load-theme theme t))

(defun xz/enable-theme (theme)
  "Enable the specified THEME."
  (enable-theme theme))

(defun xz/set-frame-font (frame)
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
                        (font-spec :family "WenQuanYi Micro Hei" :size 27)))))

(defun xz/set-frame-theme (frame)
  "Set theme in the given FRAME."
  (if (daemonp)
      (add-hook 'after-make-frame-functions(lambda (frame)
                                             (select-frame frame)
                                             (if (window-system frame)
                                                 (unless xz-theme-window-loaded
                                                   (if xz-theme-term-loaded
                                                       (xz/enable-theme xz-theme-term)
                                                     (xz/load-theme xz-theme-window))
                                                   (setq xz-theme-window-loaded t))
                                               (unless xz-theme-term-loaded
                                                 (if xz-theme-window-loaded
                                                     (xz/enable-theme xz-theme-window)
                                                   (xz/load-theme xz-theme-term))
                                                 (setq xz-theme-term-loaded t)))))
  (progn
    (if (display-graphic-p)
        (progn
          (load-theme xz-theme-window t)
          (xz/set-frame-font frame))
      (progn
        (load-theme xz-theme-term t))))))

(xz/set-frame-theme t)

;; set font in emacsclient frame
(defadvice server-create-window-system-frame
    (after set-window-system-frame-colours ())
  "Setup frame font and theme in Emacs Server."
  (xz/set-frame-font t))
(ad-activate 'server-create-window-system-frame)

;; Highlight TODO, NOTE, and FIXME tags
(require-package-load 'hl-todo)
(global-hl-todo-mode)

;; Test display of CJK fonts
;; いろはにほへとちにぬるを
;; 花朵艳丽终将散落，谁人世间能长久好

(provide 'init-theme)

;;; init-theme.el ends here
