(let ((n (read))
      (k (read))
      (x (read))
      (y (read)))

  (format t "~A~%"
          (if (<= k n)
            (+ (* k x) (* (- n k) y))
            (* n x))))


