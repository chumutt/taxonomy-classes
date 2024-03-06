(in-package :asdf-user)

(defsystem "taxonomy-classes"
  :author "chu the pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :license "GNU GPL-3.0"
  :description ""
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on ()

  ;; Project stucture.
  :serial T
  :components ((:module "src"
                        :serial T
                        :components ((:file "packages")
                                     (:file "taxonomy-classes"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "taxonomy-classes"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "taxonomy-classes:main")
