;; Start with max size frame
(toggle-frame-maximized)
;; Remove toolbar
(tool-bar-mode -1)
;; Remove menubar (FILE-EDIT-OPTION.... HELP)
(menu-bar-mode -1)
;; Remove scrollbar 
(toggle-scroll-bar -1)
;; change prompt yes-no to y-n
(defalias 'yes-or-no-p 'y-or-n-p)
;; Disable welcome/startup screen 
(setq inhibit-startup-screen t)
;; Load dracula theme
(load-theme 'dracula' t)

(provide 'theme)
