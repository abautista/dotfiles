;; cask
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
(global-set-key (kbd "C-o") 'er/expand-region)
(global-set-key (kbd "C-p") 'helm-projectile)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-o") 'other-window)

;; css mode config
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
(add-hook 'css-mode-hook
	  (function (lambda ()
		      (setq css-indent-offset 2))))

;; web mode
(add-hook 'sgml-mode-hook 'emmet-mode)
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-auto-pairing t)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook
	  (function (lambda ()
		      (setq web-mode-markup-indent-offset 2)
		      (setq web-mode-css-indent-offset 2))))
