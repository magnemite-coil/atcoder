(defun f (p q)
  (+ (abs (- (car p) (car q)))
     (abs (- (cdr p) (cdr q)))))

(let* ((n (read))
       (m (read))
       (lst1 (loop repeat n
                   collect (cons (read) (read))))
       (lst2 (loop repeat m
                   collect (cons (read) (read))))
       (lst3 (loop for i in lst1
                   collect (loop for j in lst2
                                 collect (f i j)))))

  (format t "~{~A~%~}"
          (loop for i in lst3
                collect (1+ (position (apply #'min i) i)))))

