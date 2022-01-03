(let ((a (read))
      (b (read)))

  (format t "~A~%"
          (max (+ a b) (- a b) (* a b))))

