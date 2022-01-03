(let ((a (read))
      (b (read))
      (x (read)))

  (format t "~A~%"
          (if (and (<= a x)
                   (<= x (+ a b)))
            'yes
            'no)))

