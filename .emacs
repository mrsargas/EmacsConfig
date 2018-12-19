(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auto-complete smartparens slime monokai-theme evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'evil)
(evil-mode 1)
(load-theme 'monokai t)


(require 'smartparens-config)
(smartparens-global-mode)

(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
(setq-default ac-auto-start t)
(setq-default ac-auto-show-menu t)

(require 'slime)
(require 'slime-autoloads)
(setq inferior-lisp-program "sbcl.exe")
(slime-setup '(slime-asdf
		slime-fancy
		slime-indentation))
(setq-default slime-net-coding-system 'utf-8-unix)

(setq-default lisp-body-indent 2)
(setq-default lisp-indent-function 'common-lisp-indent-function)

(desktop-save-mode 1)
