(let ((c (+ (read) (read))))
  (format t "~A~%"
          (if (>= c 10)
            "error"
            c)))

