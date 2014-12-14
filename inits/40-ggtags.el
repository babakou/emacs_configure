; Configure gtags
(require 'ggtags)
(setq ggtags-mode-hook
      '(lambda ()
	 (define-key ggtags-mode-map "\M-s" 'ggtags-find-other-symbol)
	 (define-key ggtags-mode-map "\M-r" 'ggtags-find-reference)
	 (define-key ggtags-mode-map "\M-t" 'ggtags-find-definition)
	 (define-key ggtags-mode-map "\M-," 'pop-tag-mark)
	 (define-key ggtags-mode-map "\C-c g u" 'ggtags-update-tags)
	 ;(setq gtags-select-buffer-single t)
	 ))

(add-hook 'c-mode-common-hook
          '(lambda()
             (ggtags-mode 1)
             ;(gtags-make-complete-list)
             ))
