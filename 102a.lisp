(let ((n (read)))

  (format t "~A~%"
          (if (zerop (mod n 2))
            n
            (* n 2))))

