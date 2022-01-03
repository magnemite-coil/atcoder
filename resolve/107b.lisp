(defun remove-white-columns (s)
  (if (every #'null s)
    nil
    (if (equal (remove-duplicates (mapcar #'car s))
               '(#\.))
      (remove-white-columns (mapcar #'cdr s))
      (cons (mapcar #'car s) (remove-white-columns (mapcar #'cdr s))))))


(let* ((h (read))
       (w (read))
       (l1 (loop repeat h
                 collect (read-line)))
       (l2 (mapcar #'(lambda (x)
                       (concatenate 'list x)) l1))
       (l3 (remove-white-columns (remove-white-columns l2)))
       (l4 (mapcar #'(lambda (x)
                       (concatenate 'string x))
                   l3)))

  (format t "~{~A~%~}" l4))
