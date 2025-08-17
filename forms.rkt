#lang racket

;; define a function named f with two named arguments x and y
(define (f x y)
  ;; the body of the function simply returns x
  x)

(define (loop) (loop))

(if #t 'hello (loop))

(define (if-f guard true false)
  (if guard true false))

;;(if-f #t 'hello (loop)) ;; Racket is Call-by-Value

(define x 23)

;; define a function that takes arg x, and returns 2x if x >0, otherwise
;; return -2x

(define (foo x) (if (> x 0) (* x 2) (* x (- 2))))

;;(define (foo x))

;; define 3n+1 function

(define (collatz x)
  (if (equal? 0 (modulo x 2))
      (/ x 2)
      (add1 (* 3 x))))