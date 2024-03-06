LISP ?= ros dynamic-space-size=8000 -Q run

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load taxonomy-classes.asd \
		--eval '(ql:quickload :taxonomy-classes)' \
		--eval '(asdf:make :taxonomy-classes)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp
