(let ((a (read))
      (b (read))
      (l (cons 0 (loop for i from 1 to 999
                       collect (/ (* i (1+ i)) 2)))))

  (format t "~A~%"
          (- (nth (- b a) l) b)))

