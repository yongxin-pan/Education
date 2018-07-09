# Order of Growth

## Exercise 1.15
The sine of an angle (specified in radians) can be computed by making use of the approximation sin x ≈ x if x is sufficiently small, and the trigonometric identity:  

### Procedures

```   
(define (cube x) (* x x x))

```

### Questions
a. How many times is the procedure p applied when(sine


- **Answer A**: 
  3. (sine 1.35)  -> (p (sine (0.45)))
  4. (sine 0.45)  -> (p (sine (0.15)))
  5. (sine 0.15)  -> (p (sine (0.05)))
  6. (sine 0.05)  -> (0.05)  
  
when step 6 is computed, procedure **sine** found it equals to angle(**value: 0.05**) directly. So procedure **p** is calculated **5 times** while procedure **sine** is calculated **6 times**.

- **Answer B**:
  a. Order of growth in space.  
     **sine** procedure is a linear recursive procedure (linear recursive procedure is theta(n) as regarding to order of growth in space). Further more, the order of growth of n is dividend by 3 times. So, **sine** procedure can be considered as **theta(log(n))** in space.
  b. Order of growth of steps  
    **steps = theta(log(n))** as the since procedure is **a linear recursive procedure** and **the question itself goes down 3 times each iteration**.
