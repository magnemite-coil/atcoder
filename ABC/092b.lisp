(let* ((n (read))
       (d (read))
       (x (read))
       (l (loop repeat n
                collect (read))))

  (defun f (p q)
    (multiple-value-bind (q r)
      (truncate p q)
      (if (zerop r)
        q
        (1+ q))))


  (defun g (s lst)
    (if (null lst)
      nil
      (cons (f s (car lst)) (g s (cdr lst)))))

  (format t "~A~%"
          (+ (reduce #'+ (g d l))
             x)))

