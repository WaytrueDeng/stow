(require 'org)
(org-babel-load-file
 (expand-file-name "~/.emacs.d/init-emacs.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-undo-system 'undo-tree)
 '(flycheck-warning ((t (:inherit nil :underline nil))))
 '(helm-minibuffer-history-key "M-p")
 '(org-agenda-files nil)
 '(org-roam-completion-everywhere t)
 '(org-roam-completion-system 'default)
 '(org-roam-db-update-idle-seconds 2)
 '(package-selected-packages
   '(deft org-superstar anki-editor org-noter org-roam org-download valign org-ref cl-lib youdao-dictionary yasnippet-snippets which-key use-package undo-tree solarized-theme smartparens rainbow-delimiters perspeen pdf-tools magit ivy-rich ivy-posframe info-colors indent-guide hungry-delete format-all flycheck evil-collection doom-themes doom-modeline dashboard counsel company all-the-icons-dired)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
