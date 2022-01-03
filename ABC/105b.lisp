(defun flatten (x)
  (labels ((rec (x acc)
                (cond ((null x) acc)
                      ((atom x) (cons x acc))
                      (t (rec (car x) (rec (cdr x) acc))))))
    (rec x nil)))


(let* ((n (read))
       (l (remove-duplicates (flatten (loop for i from 0 to 100 by 4
                                            collect (loop for j from 0 to 100 by 7
                                                          when (<= (+ i j) 100)
                                                          collect (+ i j)))))))

  (format t "~A~%"
          (if (find n l)
            "Yes"
            "No")))

