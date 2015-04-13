;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; clean the interface
(load-theme 'tango-dark)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq scroll-conservatively most-positive-fixnum)

;; autocomplete
(ac-config-default)

;; snippets
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-global-mode)

(defun create-snippet (filename)
  (interactive "s")
  (let ((mode (symbol-name major-mode)))
    (find-file (format "~/.emacs.d/snippets/%s/%s" mode filename))
    (snippet-mode)))

(global-set-key (kbd "M-'") 'create-snippet)

;; projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; enable fuzzy matching
(setq helm-semantic-fuzzy-match t)
(setq helm-imenu-fuzzy-match t)

;; keybindings
(global-set-key (kbd "C-o") 'er/expand-region)
(global-set-key (kbd "C-p") 'helm-projectile)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-o") 'other-window)

;; org mode
(add-hook 'text-mode-hook
	  '(lambda ()
	     (set-fill-column 80)
	     (turn-on-auto-fill)))

(global-set-key (kbd "C-c o") (lambda ()
				(interactive)
				(find-file "~/notes/organizer.org")))

;; ruby
(global-rinari-mode)

;; python
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(setq jedi:environment-root "default3")
(setq jedi:environment-virtualenv (list "virtualenv" "-p" "/usr/local/bin/python3"))

;; css
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
(add-hook 'css-mode-hook
	  (function (lambda ()
		      (setq css-indent-offset 2))))

;; web
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-auto-pairing t)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-hook 'web-mode-hook
	  (function (lambda ()
		      (setq web-mode-markup-indent-offset 2)
		      (setq web-mode-css-indent-offset 2))))
