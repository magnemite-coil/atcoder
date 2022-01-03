(let* ((a (read))
       (b (read))
       (x (read))
       (z (floor (- b a) x)))

  (format t "~A~%"
          (max
            (cond ((and (zerop (mod a x)) (zerop (mod b x))) (1+ z))
                  ((or (zerop (floor a x)) (zerop (floor b x))) z)
                  (t (1- z)))
            0)))

