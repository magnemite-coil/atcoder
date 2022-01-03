(let ((a (read))
      (b (read))
      (x (read)))

  (defun f (n)
    (1+ (floor n x)))

  (format t "~A~%"
          (- (f b) (f (1- a)))))

