(defvar csgo-navigation-map nil "Keymap for `csgo-navigation-mode")

(progn
  (setq csgo-navigation-map (make-sparse-keymap))
  (define-key csgo-navigation-map (kbd "w") 'previous-line)
  (define-key csgo-navigation-map (kbd "a") 'backward-char)
  (define-key csgo-navigation-map (kbd "s") 'next-line)
  (define-key csgo-navigation-map (kbd "d") 'forward-char)

  (define-key csgo-navigation-map (kbd "i") 'previous-line)
  (define-key csgo-navigation-map (kbd "j") 'backward-char)
  (define-key csgo-navigation-map (kbd "k") 'next-line)
  (define-key csgo-navigation-map (kbd "l") 'forward-char)

  (define-key csgo-navigation-map (kbd "W") (lambda () (interactive) (previous-line 3)))
  (define-key csgo-navigation-map (kbd "A") (lambda () (interactive) (backward-char 3)))
  (define-key csgo-navigation-map (kbd "S") (lambda () (interactive) (next-line 3)))
  (define-key csgo-navigation-map (kbd "D") (lambda () (interactive) (forward-char 3)))



  (define-key csgo-navigation-map (kbd "M-d") 'forward-word)
  (define-key csgo-navigation-map (kbd "M-a") 'backward-word)
  )


(define-minor-mode csgo-navigation-mode
  "csgo-navigation-mode helps"
  :init-value nil
  :lighter " CSGO"
  :keymap csgo-navigation-map
  )

(add-hook 'csgo-navigation-mode-hook
          (lambda () (setq buffer-read-only csgo-navigation-mode)))


(global-set-key (kbd "C-c c") 'csgo-navigation-mode)
(provide 'csgo-navigation-mode)
