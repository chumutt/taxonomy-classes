(in-package #:taxonomy-classes)

;; Define your project functionality here...

(defclass domain ()
  ((name
    :accessor domain
    :initarg :name
    :initform (error "Must supply a domain name."))))

(defclass kingdom (domain)
  ((name
    :accessor kingdom
    :initarg :name
    :initform (error "Must supply a kingdom name."))))

(defclass phylum (kingdom)
  ((name
    :accessor phylum
    :initarg :name
    :initform (error "Must supply a phylum name."))))

(defclass tclass (phylum)
  ((name
    :accessor tclass
    :initarg :name
    :initform (error "Must supply a taxonomological class name."))))

(defclass order (tclass)
  ((name
    :accessor order
    :initarg :name
    :initform (error "Must supply an order name."))))

(defclass family (order)
  ((name
    :accessor family
    :initarg :name
    :initform (error "Must supply a family name."))))

(defclass genus (family)
  ((name
    :accessor genus
    :initarg :name
    :initform (error "Must supply a genus name."))))

(defclass species (genus)
  ((name
    :accessor species
    :initarg :name
    :initform (error "Must supply a species name."))))

(defclass subspecies (species)
  ((name
    :accessor subspecies
    :initarg :name
    :initform (error "Must supply a subspecies name."))))

(defclass infrasubspecies (subspecies)
  ((name
    :accessor infrasubspecies
    :initarg :name
    :initform (error "Must supply an infrasubspecies name."))))

(defun greet (&optional (name "chu the pup"))
  (format T "Hello ~a from ~a!~&" name "taxonomy-classes"))

(defun help ()
  (format T "~&Usage:

  taxonomy-classes [name]~&"))

(defun %main (argv)
  "Parse CLI args."
  (when (member "-h" argv :test #'equal)
    ;; To properly parse command line arguments, use a third-party library such as
    ;; clingon, unix-opts, defmain, adopt… when needed.
    (help)
    (uiop:quit))
  (greet  (or (first argv)
              "dear lisp user")))

(defun main ()
  "Entry point for the executable.
  Reads command line arguments."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; We defer the work of parsing to %main because we call it also from the Roswell script.
  (%main (uiop:command-line-arguments)))
