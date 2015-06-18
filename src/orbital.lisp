(in-package :cl-user)
(defpackage orbital
  (:use :cl))
(in-package :orbital)

(defclass orrery (orbit)
  (;; the location of it's center of mass
   (x :accessor :x :type float)
   (y :accessor :y :type float)
   ;; a list of orbit classes
   (orbits :accessor satellites :type list)
))

(defclass orbit ()
  ((eccentricity ; 0 < e < 1 
     :type float
     :accessor e
     :accessor eccentricity
     :initarg :eccentricity
     :initform 1)
   (inclination ; degrees
     :type float
     :accessor inclination
     :initarg :inclination
     :initform 0)
   (longitude
     :type float 
     :accessor longitude-ascending-node
     :initarg :longitude-ascending-node
     :initform 0)

   (apoapsis
     :type float
     :accessor apoapsis
     :initarg :apoapsis
     :initform 0)
   (periapsis
     :type float
     :accessor periapsis
     :initarg :periapsis
     :initform 0)
   (object
     :type mass
     :accessor object
     :initarg :object)))
(defmethod semimajor-axis ((this orbit))
  (/ (+ (periapsis this) (apoapsis this)) 2))
(defmethod a ((this orbit)) (semi-major-axis this))


(defclass star (mass)
  ((layers
     :type list
     :accessor layers
     :initarg layers
     )))
