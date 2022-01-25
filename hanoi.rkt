#lang racket
(define sa string-append)

(define (sa3 a b c)
  (sa
   (sa a b) c))

(define (then a b)
  (sa3 a "\n" b))

(define (move src dest)
  (sa3 src " -> " dest))

; recursive
(define (hanoi_recur n)
  (define (hanoi n src dest spare)
    (if (= n 0)
       "noop"
       (then
        (then
         (hanoi (- n 1) src spare dest)
         (move src dest))
        (hanoi (- n 1) spare dest src))))
  (hanoi n "src" "dest" "spare"))

(printf (hanoi_recur 3))