#|
  This file is a part of orbital project.
|#

(in-package :cl-user)
(defpackage orbital-test-asd
  (:use :cl :asdf))
(in-package :orbital-test-asd)

(defsystem orbital-test
  :author ""
  :license ""
  :depends-on (:orbital
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "orbital"))))

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
