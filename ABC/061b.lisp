(let* ((n (read))
       (m (read))
       (lst (loop repeat m
                  collect (cons (read) (read))))
       (ans (loop repeat n
                  collect 0)))

  (loop for i in lst
        do (progn (incf (nth (1- (car i)) ans))
                  (incf (nth (1- (cdr i)) ans))))

  (format t "~{~A~%~}" ans))

