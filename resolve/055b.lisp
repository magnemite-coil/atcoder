(declaim (optimize (speed 3) (debug 0) (safety 0)))

(let ((x (read)))
  (declare (type fixnum x))

  (defun solve (n &optional (i 0) (ans 1))
    (declare (type fixnum n i ans))
    (if (= i n)
      ans
      (solve n (the fixnum (1+ i)) (the fixnum (mod (* ans (1+ i)) (+ (expt 10 9) 7))))))

  (format t "~a~%"
          (solve x)))




