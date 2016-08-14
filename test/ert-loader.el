;;; package -- Summary
;;; Commentary:
;;; Code:
(require 'f)

(defvar {{REPOSITORY}}-test/test-path
  (f-dirname load-file-name))

(defvar {{REPOSITORY}}-test/root-path
  (f-parent {{REPOSITORY}}-test/test-path))

(defvar {{REPOSITORY}}-root-path
  (f-parent (f-parent load-file-name))
  "Path to root.")

(defvar {{REPOSITORY}}-vendor-path
  (f-expand "vendor" {{REPOSITORY}}-root-path)
  "Path to vendor.")

(load (f-expand "{{REPOSITORY}}" {{REPOSITORY}}-test/root-path))

(unless (require 'ert nil 'noerror)
  (require 'ert (f-expand "ert" {{REPOSITORY}}-vendor-path)))
;;; ert-loader ends here
