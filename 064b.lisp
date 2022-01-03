(let* ((n (read))
       (lst (loop repeat n
                  collect (read))))
  (format t "~A~%"
          (- (apply #'max lst) (apply #'min lst))))

