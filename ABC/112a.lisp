(let* ((n (read))
       (m (if (= n 1)
            nil
            (+ (read) (read)))))

  (format t "~A~%"
          (if (= n 1)
            "Hello World"
            m)))

