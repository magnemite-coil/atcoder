(let* ((n (read))
       (l (sort (loop repeat n
                      collect (read))
                #'>)))

  (format t "~A~%"
          (- (car l)
             (car (last l)))))

