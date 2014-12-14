;Cursor color changes if IME is ON.
(add-hook 'w32-ime-on-hook
          (function (lambda () (set-cursor-color "LimeGreen"))))
(add-hook 'w32-ime-off-hook
          (function (lambda () (set-cursor-color "snow4"))))

; Scrolling with a mouse.
(defun scroll-down-with-lines ()
  ""
  (interactive)
  (scroll-down 3)
  )
(defun scroll-up-with-lines ()
   ""
   (interactive)
   (scroll-up 3)
)

(global-set-key [wheel-up] 'scroll-down-with-lines)
(global-set-key [wheel-down] 'scroll-up-with-lines)

; Suppress the acceleration of scrolling.
(setq scroll-conservatively 2)
