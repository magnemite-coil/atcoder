(declaim (optimize (speed 3) (debug 0) (safety 0)))
(let ((k (read))
      (s (read)))

  (declare (type fixnum k))
  (declare (type fixnum s))

  (format t "~A~%"
          (loop for i from 0 to k
                sum (loop for j from 0 to k
                          count (and (>= (the fixnum (- s i j)) 0)
                                     (<= (the fixnum (- s i j)) k))))))

