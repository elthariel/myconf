;;
;; settings.emacs for ctafconf in /home/ctaf/IBC/batail_s-ibc2
;;
;; Made by GESTES Cedric
;; Login   <ctaf@epita.fr>
;;
;; Started on  Mon Jan 16 01:13:33 2006 GESTES Cedric
;; Last update Mon Jan 16 02:09:42 2006 GESTES Cedric
;;
(message "ctafconf loading: SETTINGS.EMACS")

;; Distance between tab stops (for display of tab characters), in columns.
;; Automatically becomes buffer-local when set in any fashion.
;;(setq default-tab-width 8)

;;only space
;;(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil);
;;pour les accents (obselete)
;;(standard-display-european 1)

;;scroll avec la souris
(mouse-wheel-mode 1)

;;coloration syntaxique
(global-font-lock-mode 1)

;;suppression du menu
(menu-bar-mode 0)

;;suppression de la toolbar
(tool-bar-mode 0)

;;ne coupe pas les ligne avec des $
(set-variable 'truncate-partial-width-windows nil)

;;affiche les lignes et les colonnes dans la barre en bas
(column-number-mode 1)
(line-number-mode 1)

;; display the current time
;;(display-time)
;;(setq display-time-day-and-date t)
;;(setq display-time-24hr-format t)
;;(setq display-time-string-forms "%H:%M")
;;(setq display-time-string-forms "%H:%M" )

;; replace highlighted text with what I type rather than just
;; inserting at a point
(delete-selection-mode t)

;;supprime le bootsplash
(setq inhibit-startup-message t)

;;supprime le bootspash gnus
;;(gnus-inhibit-startup-message t)

;; highlight during searching
(setq query-replace-highlight t)

;; highlight incremental search
(setq search-highlight t)

;; highlight matches from searches
;;(setq isearch-highlight t)
(setq-default transient-mark-mode t)

(when (fboundp 'blink-cursor-mode)
  (blink-cursor-mode -1))

;;supprimer les fichiers de backup(temporaire) en quittant
;;(setq make-backup-files nil)

(setq make-backup-files t               ; make ~ files
      ;; With nil, numbered backups are made only if they already exist.
      ;; A new backup version is made every time the file is loaded.
      ;;version-control nil ; set to t below if `backup-directory-alist' exists
      kept-old-versions 2
      kept-new-versions 2
      ;; Preserves permissions of file being edited. Also affects links.
      backup-by-copying nil
      backup-by-copying-when-linked t
      backup-by-copying-when-mismatch nil
      backup-by-copying-when-privileged-mismatch 200
      delete-old-versions t           ; auto-delete excess numbered backups
      delete-auto-save-files t          ; delete auto-save files on save
      auto-save-default t               ; auto-save on every visit
      auto-save-interval 200            ; input events between auto-saves
      auto-save-timeout 30)             ; seconds idleness before autosave

; yank to point rather than cursor
(setq mouse-yank-at-point t)

;;preverse position when scroling
;;(scroll-preserve-screen-position t)

;;want it?
;(setq kill-whole-line t)

;;TEST
(setq default-major-mode 'indented-text-mode)
;;(setq font-lock-support-mode 'lazy-lock-mode)
(setq font-lock-maximum-decoration t)

;;support de la souris dans les terminaux x
(xterm-mouse-mode 0)

;;show matching parenthese
(show-paren-mode 1)

;; montre les lignes inutilisées et les limites d'un buffer
(setq-default indicate-empty-lines t)

;; s'assurer que les fichiers comportent un retour a la ligne en fin
;; nil      n'ajoute pas de newline
;; non-nil  pose la question
;; t        rajoute les newlines automatiquement
(setq require-final-newline 1
      mode-require-final-newline 1)

;;transforme 'yes or no' en 'y or n'
(fset 'yes-or-no-p 'y-or-n-p)

;;change le comportement de backspace et de suppr
;;0 is the default for the linux console
(normal-erase-is-backspace-mode 0)

;;;;;;STYLE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;color
(set-face-background   'modeline "black")
(set-face-foreground   'modeline "steelblue3")
(set-face-background   'scroll-bar "#0050C5")
(set-face-foreground   'scroll-bar "#0050C5")

;;test si on est en graphique
(if window-system
    (setq default-frame-alist
      '((width . 80) (height . 30)
        (cursor-color . "yellow")
        (cursor-type . box)
        (foreground-color . "MediumPurple2")
        (background-color . "black")))
)
