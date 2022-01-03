(let ((x (read))
      (a (read))
      (b (read)))

  (format t "~A~%"
          (cond
            ((<= b a) "delicious")
            ((<= b (+ x a)) "safe")
            (t "dangerous"))))

