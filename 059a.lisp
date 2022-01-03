(let ((x (read))
      (y (read))
      (z (read)))

  (format t "~A~%"
          (concatenate 'string (list
                                 (car (concatenate 'list (symbol-name x)))
                                 (car (concatenate 'list (symbol-name y)))
                                 (car (concatenate 'list (symbol-name z)))))))

