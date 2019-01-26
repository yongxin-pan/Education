excercise_ 1.7_Square_root_by_newton_method

Newton's method sample:  suppose we can define square-root fuction as :

$\sqrt{x}=y  \ (y{>=}0 \and y^2=x)$.

math functions are declarative knowledge and procedure should be imperative knowledge.

Newton's method of successive approximations, which says that whenever we have a guess y for value of the square root of a number x, we can perform a simple manipulation to get a better guess(one closer to the actual square root) by averaging y with x/y.

```lisp
#lang sicp
(define (sqrt_iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt_iter (improve guess x) x)))

(define (good-enough? guess x)
  (<= (abs (- (square guess) x)) 0.01))
(define (square x) (* x x))

(define (improve guess x)
  (/ (+ (/ x guess) guess) 2))

(define (sqrt x)
  (sqrt_iter 1.0 x))

(sqrt 100)
;10.000052895642693
```

Excercise 1.8: Newton's method for cube roots is based on the fact if y is and approximation to the cube root of x, then a better approximation is given by the value 
$$
\frac {x/y^2 + 2y}{3}
$$

```lisp
#lang sicp
(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (<= (abs (- (cube guess) x)) (* guess 0.01)))
(define (cube x) (* x x x))
(define (square x) (* x x))
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 1000)
;10.000000145265767
```



