(let* ((n (read))
       (l (loop repeat n
                collect (read)))
       (l2 (sort (copy-list l) #'>)))

  (format t "~A~%" (reduce #'+ (cons (/ (car l2) 2) (cdr l2)))))

