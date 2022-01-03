(let ((x (* (read) (read))))
  (format t "~A~%"
          (if (oddp x)
            "Odd"
            "Even")))

