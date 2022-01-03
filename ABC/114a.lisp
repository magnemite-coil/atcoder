(let ((x (read)))
  (format t "~A~%" (if (member x '(3 5 7))
                     "YES"
                     "NO")))

