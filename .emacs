(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(desktop-save-mode nil)
 '(ede-project-directories
   (quote
    ("/Users/abhaysingh/Dropbox/Work/EDE/myFirstEdeProject/include" "/Users/abhaysingh/Dropbox/Work/EDE/myFirstEdeProject/src" "/Users/abhaysingh/Dropbox/Work/EDE/myFirstEdeProject" "/Users/abhaysingh/Dropbox/Work/C++")))
 '(max-mini-window-height nil)
 '(paradox-github-token "0da24442d7ec07fafc4b5272cf427a95859ec9a6"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil :height 150)

;;(progn
;;(require 'recentf)
;;(recentf-mode 1)
;;(global-set-key "\C-xf" 'recentf-open-files))

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;;For copyinf files in dired mode.
(setq dired-dwim-target t)

(setq load-path (cons "/usr/local/bin//global" load-path))


(global-set-key (kbd "C-c o") 'occur)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))


(defun verilog-speedbar-install-variables ()
  (speedbar-add-supported-extension '(".v" ".sv" ".svh")))
(if (featurep 'speedbar)
    (verilog-speedbar-install-variables)
  (add-hook 'speedbar-load-hook 'verilog-speedbar-install-variables))

;; Set imenu patterns
(setq verilog-imenu-generic-expression 
  '((nil "^\\s-*\\(?:m\\(?:odule\\|acromodule\\)\\|p\\(?:rimitive\\|rogram\\|ackage\\)\\)\\s-+\\([a-zA-Z0-9_.:]+\\)" 1)
    ("*Vars*" "^\\s-*\\(reg\\|wire\\|logic\\)\\s-+\\(\\|\\[[^]]+\\]\\s-+\\)\\([A-Za-z0-9_]+\\)" 3)
    ("*Classes*" "^\\s-*\\(?:virtual\\s-+\\)?class\\s-+\\([a-zA-Z_0-9]+\\)" 1)
    ("*Tasks*" "^\\s-*\\(?:virtual\\s-+\\)?task\\s-+\\([a-zA-Z_0-9:]+\\)\\s-*[(;]" 1)
    ("*Funct*" "^\\s-*\\(?:virtual\\s-+\\)?function\\s-+\\(?:\\w+\\s-+\\)?\\([a-zA-Z_0-9:]+\\)\\s-*[(;]" 1)
    ("*Interfaces*" "^\\s-*interface\\s-+\\([a-zA-Z_0-9]+\\)" 1)
    ("*Types*" "^\\s-*typedef\\s-+.*\\s-+\\([a-zA-Z_0-9]+\\)\\s-*;" 1)))

