; Configure fonts

; 0123456789abcdef
; あいうえおかきく

(cond (window-system
       (set-face-attribute 'default nil
			   :family "Inconsolata"
			   :height 120)
       (set-fontset-font (frame-parameter nil 'font)
			 'japanese-jisx0208
			 '("MS Gothic" . "unicode-bmp")
			 )
       (setq face-font-rescale-alist
	     '(
	       (".*Inconsolata.*" . 1.0)
	       (".*MS Gothic*" . 0.9)
	       ))
       )
 )
