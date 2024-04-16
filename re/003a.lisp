(let ((x (read)))
  (format t "~A~%" (* (/ (reduce #'+ (loop for i from 1 to x collect i)) x) 10000)))

