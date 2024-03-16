(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-refresh-contents)

(setq package_list
      (quote (dracula-theme projectile magit ido-vertical-mode smex all-the-icons
                            all-the-icons-dired neotree smartparens sudo-edit)
             )
      )

(dolist (package_name package_list)
  (package-install package_name)
  )

(provide 'emacs-dependency-install)
