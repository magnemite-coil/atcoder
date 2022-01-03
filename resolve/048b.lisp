(declaim (optimize (speed 3) (debug 0) (safety 0)))
(let ((a (read))
      (b (read))
      (x (read)))
  (declare (type fixnum a b x))

  (format t "~A~%"
          (do ((i a (the fixnum (1+ i)))
               (cnt 0))
            ((> i b) (the fixnum cnt))
            (if (zerop (the fixnum (mod i x)))
              (the fixnum (incf cnt))))))

