;;; packages.el --- hackernews layer packages file for Spacemacs.
;;
;; Author:  Ferenc Züllich
;; URL: https://github.com/fzuellich/spacemacs-hackernews
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; Wrap the 'hackernews package and provide very basic keybindings.

;;; Code:

(defconst hackernews-packages
  '(hackernews))

(defun hackernews//set-leader-keys ()
  (spacemacs/set-leader-keys
    "ah" 'hackernews))
(defun hackernews//set-major-mode-keys ()
  (spacemacs/set-leader-keys-for-major-mode 'hackernews-mode
    "n" 'hackernews-next-item
    "p" 'hackernews-previous-item
    "r" 'hackernews-reload
    "m" 'hackernews-load-more-stories
    "fa" 'hackernews-ask-stories
    "fb" 'hackernews-best-stories
    "fj" 'hackernews-job-stories
    "fn" 'hackernews-new-stories
    "fs" 'hackernews-show-stories))


(defun hackernews/init-hackernews ()
  (use-package hackernews
    :defer t
    :init
    (progn (hackernews//set-leader-keys))
    :config
    (progn (hackernews//set-major-mode-keys))))


;;; packages.el ends here
