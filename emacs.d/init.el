(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Clean the interface
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; Autocomplete
(require 'auto-complete-config)
(ac-config-default)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; Keybindings
(global-set-key (kbd "C-o") 'er/expand-region)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match t)
