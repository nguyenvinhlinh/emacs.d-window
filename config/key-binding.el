;; Magit keybinding
(global-set-key (kbd "C-c g") 'magit-status)

;; Projectile keybinding
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Smex keybinding
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Neotree Mode
(global-set-key [f8] 'neotree-toggle)

;; Sudo-edit keybinding
(global-set-key (kbd "C-c C-r") 'sudo-edit)

;; Before saving file, delete trailing spaces.
(defun delete-trailing-whitespace-and-save-buffer ()
  "Delete trailing whitespace and save current buffer"
  (interactive "*")
  (progn
    (delete-trailing-whitespace)
    (save-buffer))
  )

(global-unset-key (kbd "C-x C-s"))
(global-set-key (kbd "C-x C-s") 'delete-trailing-whitespace-and-save-buffer)

;; Split Window
(defun split-window-right-and-other-window ()
  "Split window right and go to other window"
  (interactive "@")
  (progn
    (split-window-right)
    (other-window 1)
    )
  )

(defun split-window-below-and-other-window ()
  "Split window below and go to other window"
  (interactive "@")
  (progn
    (split-window-below)
    (other-window 1)
    )
  )

(global-unset-key (kbd "C-x 2"))
(global-unset-key (kbd "C-x 3"))
(global-set-key (kbd "C-x 2") 'split-window-below-and-other-window)
(global-set-key (kbd "C-x 3") 'split-window-right-and-other-window)



(provide 'key-binding)
