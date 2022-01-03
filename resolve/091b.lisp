(let* ((n (read))
       (l1 (loop repeat n
                 collect (read-line)))
       (m (read))
       (l2 (loop repeat m
                 collect (read-line))))

  (format t "~A~%"
          (max 0
               (loop for i in l1
                     maximize (- (count i l1 :test #'string=) (count i l2 :test #'string=))))))

