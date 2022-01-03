(let ((l (concatenate 'list (read-line))))

  (defun f (lst &optional (acc 0))
    (if (null lst)
      acc
      (if (char= (car lst) #\+)
        (f (cdr lst) (1+ acc))
        (f (cdr lst) (1- acc)))))

  (format t "~A~%"
          (f l)))

