(let ((lst (sort (list (read) (read) (read)) #'<)))

  (format t "~A~%"
          (if (= (+ (car lst) (cadr lst)) (caddr lst))
            "Yes"
            "No")))

