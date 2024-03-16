;; Enable projectile mode
(projectile-global-mode)

;; Enable interactive do mode
(require 'ido)
(ido-mode t)
;; Enable ido vertical mode
(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Enable smex, Smex is a M-x enhancement for Emacs. Built on top of Ido,
;; it provides a convenient interface to your recently and most frequently
;; used commands. And to all the other commands, too.
(require 'smex)
(smex-initialize)

;; Prevent emacs insert tab instead of space
(setq-default indent-tabs-mode nil)

;; Enable all the icons package
(require 'all-the-icons)
;; All the icon enable for dired mode
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
;; Hide dired's details
(add-hook 'dired-mode-hook 'dired-hide-details-mode)

;; Enable neotree
(require 'neotree)

;; Enable smartparent
(smartparens-global-mode)

;; Dired mode
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

;; Enable sudo-edit
(require 'sudo-edit)

;;Turn off notification sound
(setq visible-bell 1)

;; Set default directory when find-file C-x C-f to home
(setq default-directory "C:/Users/nguye")



(provide 'global-config)
