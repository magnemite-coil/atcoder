(defun digit-sum (x)
  (reduce #'+ (mapcar #'digit-char-p (concatenate 'list (write-to-string x)))))


(defun judge (lst p q)
  (let* ((z (car lst)))
    (if (null lst)
      nil
      (if (not (and (<= p z) (<= z q)))
        (cons 0 (judge (cdr lst) p q))
        (cons 1 (judge (cdr lst) p q))))))


(defun inner-product (lst1 lst2)
  (if (or (null lst1) (null lst2))
    0
    (+ (* (car lst1) (car lst2))
       (inner-product (cdr lst1) (cdr lst2)))))

(let* ((n (read))
       (a (read))
       (b (read))
       (l (loop for i from 1 to n
                collect i))
       (l2 (loop for i from 1 to n
                 collect (digit-sum i))))

 ;  (format t "~A~%" l)
 ;  (format t "~A~%" l2)
 ;  (format t "~A~%"
 ;          (judge l2 a b))


  (format t "~A~%"
          (inner-product l (judge l2 a b))))

