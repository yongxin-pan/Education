#Exercise 1.10
following procedure computes a mathematical
function called Ackermann’s function.

```
(define (A x y)
	(cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1) (A x (- y 1))))))
```

What are the values of the following expressions?

```
(A 1 10)
(A 2 4)
(A 3 3)
```

#Answer:
 
 - **(A 1 10)**

```
	(A 1 10)
	(* 2 (A 1 9))
	(* 2 (* 2 (A 1 8)))
	(* 2 (* 2 (* 2 A(1 7))))
	(* 2 (* 2 (* 2 (* 2 A(1 6)))))
	.......
	(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 A(1 1))))))))))
	(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2)))))))))
	2*10
	1024
```
 - **A(2 4)**

```
(A 1 (A 2 3)) 
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 4)
(A 1 16)
2*16
```
 - **A(3 3)**
 
```
A(2 (A 3 2))
A(2 (A 2 (A 3 1)))
A(2 (A 2 2))
A(2 (A 1 A(2 1)))
A(2 (A 1 2))
A(2 4)
2*16
```


