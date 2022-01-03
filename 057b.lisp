(let ((n (read))
      (m (read))
      (st (loop repeat n
                collec (cons (read) (read))))
      (cp (loop repeat m
                collec (cons (read) (read)))))

  (defun md (lst1 lst2)
    (let ((l1 (car lst1))
          (l2 (car lst2)))
      (if 



