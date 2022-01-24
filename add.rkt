#lang racket
(define (++ x)
  (+ x 1))

(define (-- x)
  (- x 1))

(define (add x y)
  (if (= x 0)
    y
    (add (-- x) (++ y))))

(add 2 2)