(let* ((s (concatenate 'list (read-line)))
       (n (count #\o s)))

  (format t "~A~%"
          (+ 700 (* 100 n))))

