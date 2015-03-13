(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; clean the interface
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

;; autocomplete
(ac-config-default)

;; snippets
(yas-global-mode)

;; projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; enable fuzzy matching
(setq helm-semantic-fuzzy-match t)
(setq helm-imenu-fuzzy-match t)

;; jedi autocompletion
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(setq jedi:environment-root "default3")
(setq jedi:environment-virtualenv (list "virtualenv" "-p" "/usr/local/bin/python3"))

;; keybindings
(global-set-key (kbd "C-i") 'helm-semantic-or-imenu)
(global-set-key (kbd "C-o") 'er/expand-region)
(global-set-key (kbd "C-p") 'helm-projectile)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
