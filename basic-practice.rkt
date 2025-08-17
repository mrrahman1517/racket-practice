#lang racket

(define (foo)
  (define + 1) ;; + = 1
  (define / (* 2 +)) ;; / = 2
  (- + /) ;; 1 - 2 = -1
  )
;;(foo) ;; expect -1

(define y 10)
y
(let ([x (+ 10 33)])
  (+ y 3))
y

(let ([x 2]
      [y 3])
  (+ x y))

(let* ([x 20]
       [y x]
       [z y])
  (+ x y z)) ;; expect 60

;; how to rewrite above using just let
(let ([x 2])
  (let ([y x])
  (+ x y)))

-5000

;; cond and guards
(define (bar x)
  (cond [(= x 42) 1]
        [(> x 0) 2]
        [else    3]))
(bar -42)

;; define abs function

#;(define (abs x)
  (cond [(> x 0) x]
        [(= x 0) 0]
        [(< x 0) (- x)]))

(define (abs x) (if (> x 0) x (- x)))

(define x (cons 0 1))
(define y1 (cons 2 3))
(define z (cons 3 4))

(define l3 (cons 2 3))
(define l2 (cons 1 l3))
(define l1 (cons 0 l2))

(cdr l1)

(define lst (list 1 2 3 4 5))
(define lst2 (list 6 7 8 9 10))

(define (rev lst)
  (cond [(= (length lst) 0) lst]
        [else (append (rev (cdr lst)) (list (car lst)))]))

(define (len lst)
  (cond [(empty? lst) 0]
        [else (+ 1 (len (cdr lst)))]))


;; write a func to take a list and index x and returns
;; the first element if x = 0
;; the second element if x = 1
;; the third element if x = 2
;; otherwise return 'unknown

(define (lst-cond lst x)
  (cond [(= x 0) (car lst)]
        [(= x 1) (car (cdr lst))]
        [(= x 2) (car (cdr (cdr lst)))]
        [else 'unknown]))



