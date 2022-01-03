(let ((a (concatenate 'list (read-line)))
      (b (concatenate 'list (read-line)))
      (c (concatenate 'list (read-line))))

  (format t "~A~%"
          (string-downcase (concatenate 'string (list (car a) (cadr b) (caddr c))))))

