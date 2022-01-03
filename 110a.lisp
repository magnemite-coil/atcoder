(let* ((lst (list (read) (read) (read)))
       (lst2 (sort (copy-list lst) #'>)))

  (format t "~A~%" (+ (* 10 (car lst2)) (cadr lst2) (caddr lst2))))

