(let* ((n (read))
       (l (loop repeat n
                collect (read))))

  (format t "~A~%"
          (length (remove-duplicates l))))

