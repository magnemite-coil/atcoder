(let ((k (read))
      (s (read)))

  (format t "~A~%"
          (loop for i from 0 to k
                sum (loop for j from 0 to k
                          count (<= 0 (- s i j) k)))))

