(let* ((n (read))
       (x (read))
       (l (loop repeat n
                collect (read)))
       (least (reduce #'+ l))
       (minimum (apply #'min l)))

  (format t "~A~%"
          (+ (truncate (- x least) minimum) n)))

