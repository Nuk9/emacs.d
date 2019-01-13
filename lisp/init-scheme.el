;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:


(require 'cmuscheme)

(setq scheme-program-name "scheme")

(defun scheme-proc ()
  "Return the current Scheme process, starting one if necessary."
  (unless (and scheme-buffer
               (get-buffer scheme-buffer)
               (comint-check-proc scheme-buffer))
    (save-window-excursion
      (run-scheme scheme-program-name)))
  (or (scheme-get-process)
      (error "No current process. See variable `scheme-buffer'")))

(define-key scheme-mode-map (kbd "<f8>")
  '(scheme-compile-definition-and-go))

(define-key inferior-scheme-mode-map (kbd "<f8>") 'previous-buffer)

(provide 'init-scheme)
;;; init-scheme.el ends here
