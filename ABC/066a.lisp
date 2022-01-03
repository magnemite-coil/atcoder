(let ((lst (sort (list (read) (read) (read)) #'<)))
  (format t "~A~%"
          (+ (car lst) (cadr lst))))

