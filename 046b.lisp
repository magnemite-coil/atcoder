(let ((n (read))
      (k (read)))

  (format t "~A~%"
          (* k (expt (1- k) (1- n)))))

