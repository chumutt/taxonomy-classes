(load "taxonomy-classes.asd")

(load "taxonomy-classes-tests.asd")

(ql:quickload "taxonomy-classes-tests")

(in-package #:taxonomy-classes-tests)

(uiop:quit (if (run-all-tests) 0 1))
