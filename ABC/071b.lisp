(let ((s (sort (remove-duplicates (concatenate 'list (read-line))
                                  :test #'char=)
               #'char-lessp))
      (alp (concatenate 'list "abcdefghijklmnopqrstuvwxyz")))

  (defun f (lst1 lst2)
    (if (null lst2)
      "None"
      (if (null lst1)
        (car lst2)
        (if (not (char= (car lst1) (car lst2)))
          (car lst2)
          (f (cdr lst1) (cdr lst2))))))

  (format t "~A~%"
          (f s alp)))

