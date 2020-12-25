(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(gruvbox-dark-soft))
 '(custom-safe-themes
   '("939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" default))
 '(display-line-numbers-type 'relative)
 '(global-display-line-numbers-mode t)
 '(line-number-mode nil)
 '(linum-relative-global-mode t)
 '(org-agenda-custom-commands
   '(("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("i" "Important TODO Tasks" tags-todo "important"
      ((org-agenda-overriding-header "Important Things to do")))))
 '(org-agenda-files
   '("~/Dropbox/org/work-todo.org" "~/Dropbox/org/repetative.org" "~/Dropbox/org/todo.org"))
 '(org-log-done t)
 '(org-log-into-drawer t)
 '(org-log-reschedule 'note)
 '(package-selected-packages
   '(super-save ob-tmux babel htmlize org-tree-slide ob-ammonite scala-mode spaceline ivy-mpdel mpdel synosaurus dictionary ac-ispell zenburn-theme gruvbox-theme evil use-package))
 '(pdf-view-midnight-colors '("#fdf4c1" . "#32302f"))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(vc-follow-symlinks t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
