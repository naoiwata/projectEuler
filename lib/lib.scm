;;
;; @author naoiwata
;; lib.scm
;;

;; Fibnacci
(define (Fib n)
	(Fib-iter 1 2 n))

(define (Fib-iter sum pre count)
	(if (= count 0)
		sum
		(Fib-iter
			(+ sum pre)
			sum
			(- count 1))))

;; END