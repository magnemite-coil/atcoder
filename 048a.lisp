(let* ((lst (list (read) (read) (read)))
       (c (cadr lst))
       (x (car (concatenate 'list (string c)))))

  (format t "A~AC~%" x))

