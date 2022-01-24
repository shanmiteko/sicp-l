#lang racket
; 0 1 2 3 4 5 6 7 8 9 10
; 0 1 1 2 3 5 8 13 21 55

; recursive
;                                                ? fib 5
;                          ? fib 4                  +                  ? fib 3
;            ? fib 3          +      ? fib 2          +      ? fib 2      +  ? fib 1
;      ? fib 2 + ? fib 1   +   ? fib 1 + ? fib 0   +   ? fib 1 + ? fib 0
; ? fib 1 + ? fib 0
; time: O(fib n)
; space: O(n)
(define (fib_recur n)
  (if (< n 2)
     n
     (+ (fib_recur (- n 1)) (fib_recur (- n 2)))))

; iteration
; ? fib 5
; 0 1
; 1 1
; 2 1
; 3 2
; 5 3
; time: O(n)
; space: O(1)
(define (fib_iter n)
  (define (fib n a b)
    (if (= n 0)
       a
       (fib (- n 1) (+ a b) a)))
  (fib n 0 1))

(fib_recur 10)
(fib_iter 10)