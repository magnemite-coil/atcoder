(let* ((x (read))
       (a (read))
       (b (read))
       (y (- x a)))

  (format t "~A~%"
          (mod y b)))

