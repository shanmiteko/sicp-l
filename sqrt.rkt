#lang racket
(define (sq x)
  (* x x))

(define (avg x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (< x 0) (- x) x))

(define (sqrt x)
  (define delta
    0.00001)
  (define (next guess)
    (avg guess (/ x guess)))
  (define (ok? guess)
    (< (abs (- (sq guess) x)) delta))
  (define (try guess)
    (if (ok? guess)
      guess
      (try (next guess))))
  (try 1.0))

(sqrt 2)