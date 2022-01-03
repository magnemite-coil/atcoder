(defun get-alice (lst &optional (acc nil))
  (if (null lst)
    acc
    (get-alice (cddr lst) (cons (car lst) acc))))


(defun get-bob (lst &optional (acc nil))
  (get-alice (cdr lst)))


(let* ((n (read))
       (l (sort (loop repeat n
                      collect (read))
                #'>))
       (alice (get-alice l))
       (bob (get-bob l)))

  (format t "~A~%" (- (reduce #'+ alice) (reduce #'+ bob))))

