(let ((a (read))
      (b (read))
      (c (read))
      (d (read)))

  (format t "~A~%"
          (if (<= (max a c) (min b d))
            (- (min b d) (max a c))
            0)))

