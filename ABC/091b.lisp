(let* ((n (read))
       (l1 (loop repeat n
                 collect (read)))
       (m (read))
       (l2 (loop repeat m
                 collect (read)))
       (l3 (remove-duplicates (loop for i in l1
                                    collect (cons i (count i l1)))
                              :test #'equal))
       (l4 (remove-duplicates (loop for i in l2
                                    collect (cons i (count i l2)))
                              :test #'equal)))

  (format t "~A~%" l1)
  (format t "~A~%" l2)
  (format t "~A~%" l3)
  (format t "~A~%" l4)

  (defun f (lst1 lst2)
            (loop for i in lst1
                  collect (loop for j in lst2
                                if (eq (car i) (car j))
                                collect (cons (car i) (- (cdr i) (cdr j)))
                                else collect i)))





  (format t "~A~%" (f l3 l4)))


