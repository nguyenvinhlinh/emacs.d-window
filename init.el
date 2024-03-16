(add-to-list 'load-path "~/.emacs.d/config/")

(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(require 'theme)
(require 'global-config)
(require 'key-binding)

;; Fix tramp bug for not autoload function.
;; Credit to: https://www.reddit.com/r/emacs/comments/l2lw7o/comment/grxh2k5/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
(autoload #'tramp-register-crypt-file-name-handler "tramp-crypt")


