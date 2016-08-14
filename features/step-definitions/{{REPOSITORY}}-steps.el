;;; package -- summary

;;; Commentary:
;; This file contains your project specific step definitions.  All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.
(declare-function simulate "ext:simulate")
(declare-function quit "ext:quit")
(declare-function When "ext:When")

;;; Code:
(When "^I run the simulation$"
      (lambda ()
        (simulate t)
        ))

(When "^I run the simulation and quit$"
      (lambda ()
        (let ((quit-timer (simulate t)))
          (quit quit-timer))))
;;; {{REPOSITORY}}-steps ends here
