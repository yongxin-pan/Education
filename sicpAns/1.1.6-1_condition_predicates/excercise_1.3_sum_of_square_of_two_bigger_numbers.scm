#lang sicp

(define (square x) (* x x))

(define (max x y)
         (cond ((> x y) x)
                (else y)))
(define (min x y) (if(> x y) x y))

(define (sqrsum_of_bigtwo x y z) 
        (+ (square (max x y)) (square (max (min x y) z))))

(sqrsum_of_bigtwo 3 4 5)
