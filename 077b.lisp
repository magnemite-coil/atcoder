(declaim (optimize (safety 0) (debug 0) (speed 3)))

(defun square-p (x)
  (integerp (sqrt x)))

(defun max-square (y)
  (declare (type fixnum y))
  (if (<= y 1)
    1
    (if (square-p y)
      y
      (max-square (the fixnum (1- y))))))

(let ((n (read)))
  (format t "~A~%"
          (the fixnum (max-square n))))

