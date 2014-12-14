; Configure coding style.

(defun my-c-mode-hook ()
  (c-set-style "linux")
  (setq tab-width 4)
  (setq c-basic-offset tab-width))
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c-mode-hook)

; Run compile command with C-c c
(define-key mode-specific-map "c" 'compile)
(setq compilation-scroll-output t)
