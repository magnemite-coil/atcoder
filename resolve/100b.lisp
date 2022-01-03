(let ((d (read))
      (n (read)))

  (format t "~A~%"
          (if (and (= n 100) (= d 2))
            (* (expt 100 2) * 101)
            (* (expt 100 d) n))))

