(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(put 'dired-find-alternate-file 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(auctex corfu evil multiple-cursors)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;some nice to have things
(electric-pair-mode t)                     ;; Auto-close brackets and such
(global-display-line-numbers-mode)         ;; Display line numbers
(setq display-line-numbers-type 'relative) ;; Make line numbers relative
(column-number-mode t)                     ;; Show current column

(require 'evil) ;; emacs vi mode
(evil-mode 1)
(global-set-key (kbd "C-c v") 'evil-mode)

(require 'evil-mc)
(global-evil-mc-mode 1)
