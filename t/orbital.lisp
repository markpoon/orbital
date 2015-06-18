(in-package :cl-user)
(defpackage orbital-test
  (:use :cl
        :orbital
        :prove))
(in-package :orbital-test)

;; NOTE: To run this test file, execute `(asdf:test-system :orbital)' in your Lisp.

(plan nil)

;; a system should have 6 orbital elements

;; 

(finalize)
