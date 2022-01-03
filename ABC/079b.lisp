(defun lucas (x &optional (t0 2) (t1 1))
  (if (= x 0)
    t0
    (if (= x 1)
      t1
      (+ (lucas (- x 2)) (lucas (1- x))))))

(format t "~A~%"
        (loop for i from 0 to 89
              collect (lucas i)))


