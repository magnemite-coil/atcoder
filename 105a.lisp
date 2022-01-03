(let ((n (read))
      (k (read)))

  (format t "~A~%"
          (if (zerop (mod n k))
            0
            1)))

