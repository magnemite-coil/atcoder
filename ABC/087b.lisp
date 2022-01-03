(let ((a (read))
      (b (read))
      (c (read))
      (x (read)))

  (format t "~A~%"
          (loop for i from 0 to a
                sum (loop for j from 0 to b
                          sum (loop for k from 0 to c
                                    count (= (+ (* 500 i) (* 100 j) (* 50 k)) x))))))

