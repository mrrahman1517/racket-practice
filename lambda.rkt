#lang racket

(define f ( lambda (x) (+ x x)))

(define (double g) (lambda (x) (g (g x))))