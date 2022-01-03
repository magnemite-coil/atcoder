(let ((l (+ (read) (read)))
      (r (+ (read) (read))))

  (format t "~A~%"
          (cond ((= l r) "Balanced")
                ((< l r) "Right")
                (t "Left"))))

