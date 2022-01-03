(let ((a (read))
      (b (read))
      (c (read)))

  (format t "~A~%"
          (if (and (<= a c) (<= c b))
            "Yes"
            "No")))

