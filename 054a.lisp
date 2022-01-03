(let ((a (read))
      (b (read)))

  (defun judge (x y)
    (cond ((= x y) "Draw")
          ((= x 1) "Alice")
          ((= y 1) "Bob")
          ((< x y) "Bob")
          (t "Alice")))

  (format t "~A~%"
          (judge a b)))

