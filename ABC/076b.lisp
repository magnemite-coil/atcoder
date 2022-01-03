(defun f (x y &optional (ans 1))
  (if (< x 1)
    ans
    (f (1- x) y (min (* 2 ans) (+ y ans)))))

(let ((n (read))
      (k (read)))

  (format t "~A~%"
          (f n k)))

