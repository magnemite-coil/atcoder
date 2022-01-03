(let* ((n (read))
       (l (read))
       (lst (loop repeat n
                  collect (read-line))))

  (format t (apply #'concatenate 'string
                   (sort (copy-list lst) #'string<))))

