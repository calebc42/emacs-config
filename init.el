;;; -*- lexical-binding: t -*-
;;; init.el --- Bootstrap for a Literate Emacs Configuration

;; --- 1. Set up Custom File ---
;; Tell Emacs where to save customizations *before* anything else.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; --- 2. Set up the Package System ---
(setq package-enable-at-startup nil)
(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("org"   . "https://orgmode.org/elpa/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; --- 3. Load the Tangled Configuration ---
(message "Attempting to load config.el...")
(load-file (expand-file-name "config.el" user-emacs-directory))

;;; init.el ends here
