(let* ((h (read))
       (w (read))
       (lst (loop repeat h
                  collect (read-line)))
       (lst2 (loop for i in lst
                   for j in lst
                   collect (cons i (cons j nil)))))

  (format t "~{~{~A~%~}~}" lst2))

