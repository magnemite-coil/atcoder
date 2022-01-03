(let ((o (concatenate 'list (read-line)))
      (e (concatenate 'list (read-line))))

  (defun f (lst1 lst2 &optional ans)
    (if (null (car lst1))
      (reverse ans)
      (f (cdr lst1) (cdr lst2) (cons (car lst2) (cons (car lst1) ans)))))

  (format t "~A~%"
          (concatenate 'string (remove-if #'null (f o e)))))

