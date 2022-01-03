(let* ((s (concatenate 'list (read-line)))
       (f (string (car s)))
       (b (string (car (reverse s)))))

  (format t "~A~%"
          (concatenate 'string f (write-to-string (- (length s) 2)) b)))

