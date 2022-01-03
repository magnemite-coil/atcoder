(let* ((n (read))
       (m (read))
       (lst1 (loop repeat n
                   collect (cons (read) (read))))
       (lst2 (loop repeat m
                   collect (cons (read) (read)))))

  (defun f (p q)
    (+ (abs (- (car p) (car q))) (abs (- (cdr p) (cdr q)))))


  (setq lst3
        (loop for i from 0 to (1- (length lst1))
              collect (loop for j from 0 to (1- (length lst2))
                            collect (f (nth i lst1) (nth j lst2)))))

  (format t "lst1: ~A~%" lst1)
  (format t "lst2: ~A~%" lst2)
  (format t "lst3: ~A~%" lst3)


  (format t "~{~A~%~}"
          (loop for i in lst3
                collect (1+ (position (apply #'min i) i)))))


