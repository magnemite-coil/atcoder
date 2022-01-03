(let ((r (read))
      (g (read))
      (b (read)))
  (format t "~A~%"
          (if (zerop (mod (+ (* 10 g) b) 4))
            'yes
            'no)))

