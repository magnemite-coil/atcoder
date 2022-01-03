(let ((l1 (concatenate 'list (read-line)))
      (l2 (concatenate 'list (read-line))))

  (defun f (lst)
    (reverse (cdr (reverse (append (last lst) lst)))))


  (defun g (lst1 lst2 &optional (cnt (length lst1)))
    (if (minusp cnt)
      nil
      (if (equal lst1 lst2)
        T
        (g (f lst1) lst2 (1- cnt)))))


  (format t "~A~%"
          (if (g l1 l2)
            "Yes"
            "No")))

