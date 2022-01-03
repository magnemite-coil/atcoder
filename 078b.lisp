(defun f (p q r &optional (ans 0))
  (if (> (+ (* (1+ ans) r) (* ans q)) p)
    (1- ans)
    (f p q r (1+ ans))))


(let ((x (read))
      (y (read))
      (z (read)))

  (format t "~A~%"
          (f x y z)))

