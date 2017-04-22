;; Org mode customizations

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-directory "~/.org")
(setq org-default-notes-file "~/.org/refile.org")
(setq org-tags-exclude-from-inheritance '("PROJECT"))

(setq org-agenda-files (list
			"~/.org/todo.org"
			"~/.org/english.org"))

(setq org-agenda-custom-commands
      '(("p" tags "PROJECT-MAYBE-DONE" nil)
	("a" "My agenda"
	 ((tags "PROJECT-MAYBE-DONE")
	  (org-agenda-list)))))

(setq org-capture-templates
      '(
	("j" "Journal Entry"
	 entry (file+datetree "~/journal.org")
	 " ")
	))
