excercise_factorial_iterative

We begin by considering the factorial function, defined by 
$$
n! = n * (n-1) * (n-2)...3*2*1 = n * (n-1)!
$$

* the linear recursive implementation

  ```
  #lang sicp
  (define (factorial n)
    (if (> n 1)
        (* n (factorial (- n 1)))
        1))
  (factorial 5)
  ```

  

* the linear iteration implementation

  ```
  #lang sicp
  (define (factorial n)
    (define (fact-iter product counter max-count)
      (if (> counter max-count)
          product
          (fact-iter (* product counter) (+ counter 1) max-count)))
    (fact-iter 1 1 n))
  
  (factorial 5)
  ```

* the improved linear iteration by removing outer-defined variables

  ```
  #lang sicp
  (define (factorial n)
    (define (fact-iter product counter)
      (if (> counter n)
          product
          (fact-iter (* product counter) (+ counter 1))))
    (fact-iter 1 1))
  
  (factorial 5)
  ```

  

