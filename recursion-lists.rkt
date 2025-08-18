#lang racket

(define (gcd m n)
  (cond
    [(> m n) (gcd (- m n) n)] 
    [(> n m) (gcd m (- n m))]
    [else m]))

(define lst (cons 42 (cons -1 (cons 3 (cons 1 (cons 7 '()))))))

(define (len lst)
  (cond
    [(empty? lst) 0]
    [else (+ 1 (len (cdr lst)))]))

(define (sum lst)
  (cond
    [(empty? lst) 0]
    [else (+ (car lst) (sum (cdr lst)))]))

;; calculate length of a list
(define (length l)
  (if (empty? l)
      0
      (+ 1 (length (cdr l)))))

(define (sum2 l)
  (if (empty? l)
      0
      (+ (car l) (sum2 (cdr l)))))

