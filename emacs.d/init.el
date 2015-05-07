;;; init.el --- emacs init file.

;;; Commentary:

;; This is my emacs configuration.

;;; Code:
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

;; initialize the packages and create the packages list if not exists
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq scroll-conservatively most-positive-fixnum)

;; clean the interface
(tool-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'tango-dark)

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

;; org-mode
(add-hook 'text-mode-hook
	  '(lambda ()
	     (set-fill-column 80)
	     (turn-on-auto-fill)))

(global-set-key (kbd "C-c o") (lambda ()
				(interactive)
				(find-file "~/notes/organizer.org")))

(setq org-default-notes-file "~/notes/organizer.org")
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "M-o") 'other-window)

;; packages-configuration
(load "~/.emacs.d/packages-configuration.el")

;;; init.el ends here
