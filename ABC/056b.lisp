(let ((w (read))
      (a (read))
      (b (read)))

  (format t "~A~%"
          (if (or (and (>= b a) (<= b (+ a w)))
                  (and (>= a b) (<= a (+ b w))))
            0
            (min (abs (- b a w)) (abs (- a b w))))))

