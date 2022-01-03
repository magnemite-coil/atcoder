(declaim (speed 3) (safety 0) (debug 0))

(let ((n (read)))
  (declare (type fixnum n))

  (defun fac (x)
    (if (<= x 1)
      1
      (the fixnum (* x (fac (1- x))))))

  (format t "~A~%"
          (mod (the fixnum (fac n)) (the fixnum (+ (expt 10 9) 7)))))

