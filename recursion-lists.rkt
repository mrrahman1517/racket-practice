#lang racket

(define (gcd m n)
  (cond
    [(> m n) (gcd (- m n) n)] 
    [(> n m) (gcd m (- n m))]
    [else m]))