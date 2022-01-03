(let ((x (read)))

  (format t "~A~%"
          (if (= x 1)
            1
            (apply #'max
                   (apply #'append
                          (loop for i from 2 to 32
                                collect (loop for j from 2 to 10
                                              when (<= (expt i j) x)
                                              collect (expt i j))))))))

