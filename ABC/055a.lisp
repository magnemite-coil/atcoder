(let ((n (read)))
  (format t "~A~%"
          (- (* n 800) (* (truncate n 15) 200))))

