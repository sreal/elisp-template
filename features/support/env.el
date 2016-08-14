(require 'f)

(defvar {{REPOSITORY}}-support-path
  (f-dirname load-file-name))

(defvar {{REPOSITORY}}-features-path
  (f-parent {{REPOSITORY}}-support-path))

(defvar {{REPOSITORY}}-root-path
  (f-parent {{REPOSITORY}}-features-path))

(add-to-list 'load-path {{REPOSITORY}}-root-path)

(require '{{REPOSITORY}})
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
