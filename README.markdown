# Orbital

A small Common Lisp library for describing orbits, written in 2015. It connects my aerospace management background (M.Sc., International Space University) with Lisp.

It models orbits with CLOS classes: an `orbit` carries eccentricity, inclination, longitude of the ascending node, apoapsis and periapsis, and derives values such as the semi-major axis; an `orrery` holds a set of orbiting bodies around a centre of mass.

## Status

An early sketch, not a finished library: the class model and a few derived quantities are in place, and there is no propagation or test coverage yet.

## Usage

Load it with ASDF:

```lisp
(asdf:load-system :orbital)
(in-package :orbital)
(semimajor-axis (make-instance 'orbit :periapsis 6678.0 :apoapsis 42164.0))
```
