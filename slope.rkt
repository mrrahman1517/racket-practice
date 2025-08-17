#lang racket

;; function def

;; define the calculate slope function
(define (calculate-slope x0 y0 x1 y1)
(/ (- y1 y0) (- x1 x0)))

(define (positive-integer? x)
  (and (integer? x) (> x 0)))

