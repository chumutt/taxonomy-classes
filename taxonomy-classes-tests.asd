(in-package :asdf-user)

(defsystem "taxonomy-classes-tests"
  :description "Test suite for the taxonomy-classes system"
  :author "chu the pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :depends-on (:taxonomy-classes
               :fiveam)
  :license "GNU GPL-3.0"
  :serial T
  :components ((:module "tests"
                        :serial T
                        :components ((:file "packages")
                                     (:file "test-taxonomy-classes"))))

  ;; The following would not return the right exit code on error, but still 0.
  ;; :perform (test-op (op _) (symbol-call :fiveam :run-all-tests))
  )
