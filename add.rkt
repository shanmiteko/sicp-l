#lang racket
(define (++ x)
  (+ x 1))

(define (-- x)
  (- x 1))

; linear iteration
(define (add_iter x y)
  (if (= x 0)
    y
    (add_iter (-- x) (++ y))))

; linear recursion
(define (add_recur x y)
  (if (= x 0)
     y
     (++ (add_recur (-- x) y))))

(add_recur 2 2)
(add_iter 2 2)