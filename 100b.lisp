(let* ((d (read))
       (n (read))
       (l (loop for i from 1 to (+ n 2)
                collect (* i (expt 100 d))))
       (l2 (set-difference l (if (= n 2) '(10000 100000 1000000)))))

  (format t "~A~%"
          (nth (1- n) l2)))

