(let ((n (read)))

  (format t "~A~%"
          (cond ((< n 105) 0)
                ((< n 135) 1)
                ((< n 165) 2)
                ((< n 189) 3)
                ((< n 195) 4)
                (t 5))))

