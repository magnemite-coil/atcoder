(let ((a (read))
      (b (read)))

  (format t "~A~%"
          (if (and (<= a 8) (<= b 8))
            "Yay!"
            ":(")))

