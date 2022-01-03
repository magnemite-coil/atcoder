(let ((a (read))
      (b (read)))

  (format t "~A~%"
          (if (<= a b)
            a
            (1- a))))

