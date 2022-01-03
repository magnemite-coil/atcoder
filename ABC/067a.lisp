(let ((a (read))
      (b (read)))

  (format t "~A~%"
          (if (or (zerop (mod a 3)) (zerop (mod b 3)) (zerop (mod (+ a b) 3)))
            "Possible"
            "Impossible")))

