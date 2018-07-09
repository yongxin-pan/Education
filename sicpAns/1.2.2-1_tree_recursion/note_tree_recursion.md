# Tree Recursion
---
## Fionacci

**recursive procedure**

    (define (fib n)  
        (cond ((= n 0) 0)  
              ((= n 1) 1)  
              (else (+ (fib (- n 1)) 
                       (fib (- n 2))))))

**iterative function**

```
(define (fib n)
  (fib-iter 1 0 n)

(define (fib-iter a b n)
  (if(= n 0)
     b
    (fib-iter (+ a b) a (- n 1))))
```
### Analyzing:             
iterative process:

	(fib 5)
	(fib-iter 1 0 5)
	(fib-iter 1 1 4)
	(fib-iter 2 1 3)
	(fib-iter 3 2 2)
	(fib-iter 5 3 1)
	(fib-iter 8 5 0)
	(5)
---
## Counting Changes

### Problem
How many counting changes to exchange 1 Dollar to (50, 25 10 5 1) cents

### Analyzing
Counting change collections can be classified into two categories:  
* Counting collections which include a specific counting change(eg. 50);  
* Counting collections which exclude that specific counting change;

For case #1, its total counting is reduced for each recursion: counting_number - 50.  
For case #2, its counting changes number is reduced from 5 to 4;

So we can describe our procedue like below:  
* if a(total amount) is 0, we should count that as 1 way to make change;  
* if a < 0, we count that as 0 way to make change;  
* if n(number of coins) is 0, we count that as 0 way to make change;  

### Procedures
(define (count-change amount)
        (cc amount 5))

(define (cc amount count)
  (cond ((= amount 0) 1)
        ((< amount 0) 0)  	
        ((= count  0) 0)
        (else (+ 
               (cc (- amount (changes count)) count)  
               (cc amount (- count 1))))))

First, we need to define a collection to represent (1 5 10 25 50):

```
(define (changes n)
  (cond 
    ((= n 1) 1)
    ((= n 2) 5)
    ((= n 3) 10)
    ((= n 4) 25)
    ((= n 5) 50)))	
```
---
# Question
Exercise 1.11.  A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process

# Answer
## Recursive process
### Codes
```scheme
(define (f n)
    (if(< n 3)
       n
       (+ (f (- n 1)) 
          (* 2 (f (- n 2)))
          (* 3 (f (- n 3))))))
```
## Iterative process
```scheme
(define (f n)
   (if(< n 3)
      n
      (fi 2 1 0 n)))

(define (fi a b c k)
  (if(< k 3)
     a
     (fi (+ a
           (* 2 b)
           (* 3 c))
         a 
         b
         (- k 1))))
```
## Runtime
### f(3)

```
1.   f(3)
2.   (fi (+ 2 (*2 1) (* 3 0))
        2 
        1 
        (- 3 1))
3.   (fi 4 2 1 2)
4.   (4)
```

### f(4)

```
1.   f(4)
2.   (fi (+ 2 2*1 3*0) 2 1 3)
3.   (fi 4 2 1 3)
4.   (fi (+ 4 2*2 3*1) 4 2 2)
5.   (fi 11 4 2 2)
4.   (11)
```

---
## Pascal Triangle
**recursive procedure**

```              
(define (pascal n j) 
    (if (or (= j n) (= j 1))
       1
       (+ (pascal (- n 1) (- j 1))
          (pascal (- n 1) j))))
```  
### Runtime  
_**recursive process**_

    (pascal 4 2)
    (+ (pascal 3 1) (pascal 3 2))
    (+ (pascal 3 1) (+ (pascal 2 1) (pascal 2 2)))    
    (+ 1 (+ 1 1))
    (3)
    