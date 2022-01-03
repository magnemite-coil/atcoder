(let* ((l (sort (list (read) (read) (read)) #'>))
       (k (read))
       (most (car l)))

  (format t "~A~%"
          (reduce #'+ (cons (* most (expt 2 k)) (cdr l)))))

