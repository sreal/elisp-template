(ert-deftest test-version-is-returned ()
  "Test version is returned."
  (should (string= (version) "0.0.1")))
