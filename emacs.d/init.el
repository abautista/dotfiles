(require 'cask "~/.cask/cask.el")
(cask-initialize)

(yas-global-mode t)

(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(require 'auto-complete-config)
(ac-config-default)

(projectile-global-mode)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

