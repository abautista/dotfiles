;; Language specific customizations

;; Customizations for all modes in CC mode
(defun abautista-set-c-style()
  (c-set-style "stroustrup")
  
  (local-set-key (kbd "C-c <right>") 'hs-show-block)
  (local-set-key (kbd "C-c <left>") 'hs-hide-block)
  (local-set-key (kbd "C-c <up>") 'hs-hide-all)
  (local-set-key (kbd "C-c <down>") 'hs-show-all)
  (hs-minor-mode 1)
  
  (local-set-key (kbd "<f12>") 'projectile-find-other-file)

  (setq tab-width 4
	indent-tabs-mode nil)
  (electric-pair-mode 1))

(add-hook 'c-mode-common-hook 'abautista-set-c-style)


