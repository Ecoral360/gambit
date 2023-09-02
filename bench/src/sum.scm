;;; SUM -- Compute sum of integers from 0 to 10000

(define (run n)
  (letrec ((loop (lambda (i sum)
                   (if (< i 0)
                     sum
                     (loop (- i 1) (+ i sum))))))
    (loop n 0)))
 
(define (main . args)
  (run-benchmark
    "sum"
    sum-iters
    (lambda (result) (equal? result 50005000))
    (lambda (n) (lambda () (run n)))
    10000))
