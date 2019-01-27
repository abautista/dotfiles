(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(setq inhibit-startup-message t)
(setq frame-resize-pixelwise t)
(setq scroll-conservatively most-positive-fixnum)

;; no auto save files
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq org-directory "~/.org")

(when (member "Source Code Pro for Powerline" (font-family-list))
  (set-face-attribute 'default nil :font "Source Code Pro for Powerline-13"))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; transpose windows arrangement in a frame
(use-package transpose-frame
  :ensure t)

(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; markdown mode
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;; spacemacs theme
(use-package spacemacs-common
  :ensure spacemacs-theme
  :config
  (load-theme 'spacemacs-dark t))

;; project interaction library for Emacs
(use-package projectile
  :ensure t
  :config
  (projectile-mode))

;; text completion framework for Emacs
(use-package company
  :ensure t
  :init
  (setq company-minimum-prefix-length 2)
  (setq company-idle-delay 0.1)
  :config
  (global-company-mode))

;; syntax checking for gnu emacs
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; incremental completion and selection narrowing framework
(use-package helm
  :ensure t
  :init
  (helm-mode 1)
  :bind
  ("C-x b" . helm-mini)
  ("M-j" . helm-imenu)
  ("C-x C-f" . helm-find-files)
  ("M-x" . helm-M-x)
  ("M-y" . helm-show-kill-ring))

;; Searches rapidly through org files
(use-package helm-org-rifle
  :ensure t)

;; global keybindings
(global-set-key (kbd "M-o") 'other-window)

(global-set-key (kbd "<f8>") 'first-error)
(global-set-key (kbd "<f7>") 'previous-error)
(global-set-key (kbd "<f9>") 'next-error)

(global-set-key (kbd "<f11>") 'flop-frame)
