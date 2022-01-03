(let ((lst (concatenate 'list (read-line))))
  (format t "~A~%"
          (if (char= (car lst) (caddr lst))
            "Yes"
            "No")))

