(let ((l (sort (list (read) (read) (read))
               #'>)))

  (format t "~A~%"
          (+
            (- (car l) (cadr l))
            (- (cadr l) (caddr l)))))

