;;; package -- Summary

;;; Commentary:
;;

;;; Code:
(defun version ()
  "Provide the version."
  (interactive)
  (let ((version "0.0.1"))
    (message version)
    version))

(defun simulate (&optional inhibit-input)
  "Run the simulation.
When INHIBIT-INPUT is non-nil, quit must be called explicitly."
  (interactive)
  (with-local-quit
    (let ()
      (switch-to-buffer "*{{REPOSITORY}}*")
      (if (not inhibit-input)
          (when (read-char "Press any key to quit") (quit nil)))
      ;; (setq running-timer (run-with-idle-timer 2 nil step))
      )))

(defun sf/quit (&optional quit-timer)
  "Quit the simulation.
If QUIT-TIMER is provided, the timer will be canceled."
  (interactive)
  (let ()
    (kill-buffer "*{{REPOSITORY*")
       (if quit-timer (cancel-timer quit-timer))
       (message "Simulation ended.")))


(provide '{{REPOSITORY}})
;;; {{REPOSITORY}} ends here
