(let ((a (read))
      (b (read))
      (c (read))
      (d (read)))

  (format t "~A~%"
          (if (or (<= (abs (- a c)) d)
                  (and (<= (abs (- a b)) d) (<= (abs (- b c)) d)))
            "Yes"
            "No")))

