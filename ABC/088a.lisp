(let ((n (read))
      (a (read)))

  (format t "~A~%"
          (if (<= (mod n 500) a)
            "Yes"
            "No")))

