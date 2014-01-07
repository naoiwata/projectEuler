;
; @author naoiwata
; project Euler problem 1
; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000.

(define (q1 n)
	(q1-iter 0 0 n))

(define (q1-iter counter sum n)
	(cond
		((<= n counter) sum)
		((or 
			(= (modulo counter 3) 0) 
			(= (modulo counter 5) 0)) 
				(q1-iter (+ counter 1) (+ sum counter) n))
		(else (q1-iter (+ counter 1) sum n))))

(q1 1000)
; 233168