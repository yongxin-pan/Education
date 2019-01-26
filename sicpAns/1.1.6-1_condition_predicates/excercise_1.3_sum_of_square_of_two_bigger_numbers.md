Exercise 1.3: Define a procedure that takes three numbers as arguments and returns the sum of squares of the two larger numbers.

```scheme
#lang sicp
(define (square x) (* x x))
(define (max x y)
         (cond ((> x y) x)
                (else y)))
(define (min x y) (if(> x y) x y))
(define (sqrsum_of_bigtwo x y z) 
        (+ (square (max x y)) (square (max (min x y) z))))

(sqrsum_of_bigtwo 3 4 5)

```

output: 41



