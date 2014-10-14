(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'helm-config)
(require 'auto-complete-config)

(projectile-global-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(yas-global-mode t)
(helm-mode 1)

(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(delete-selection-mode t)
(show-paren-mode t)
(setq make-backup-file nil)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)
(setq ring-bell-function 'ignore)

(ac-config-default)

(global-set-key (kbd "C-x b") 'helm-mini)

(setq venv-location "~/Envs")
(add-hook 'python-mode-hook 'jedi:setup)

(setq jedi:environment-root "jedi3")
(setq jedi:environment-virtualenv (list "virtualenv" "-p" "/usr/local/bin/python3"))
(setq jedi:complete-on-dot t)
;;(add-hook 'python-mode-hook (lambda () (setq indent-tabs-mode t)))

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
