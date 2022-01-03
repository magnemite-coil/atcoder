(defun fib (n)
  (if (< n 2)
    n
    (+ (fib (- n 2)) (fib (1- n)))))




(fib 10)
