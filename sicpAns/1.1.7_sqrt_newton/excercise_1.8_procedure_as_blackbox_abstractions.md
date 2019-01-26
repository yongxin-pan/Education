excercise_ 1.8_procedure_as_blackbox_abstractions
## internal definitions and block structure

To make a subprocedure visible only internally, we should define it as block structure.

```lisp
(define (cube-root x)
  (define (cube-root-iter guess x)
    (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))
  (define (good-enough? guess x)
    (<= (abs (- (cube guess) x)) (* guess 0.01)))
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (cube x) (* x x x))
  (define (square x) (* x x))

  (cube-root-iter 1.0 x))
```

