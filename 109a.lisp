(let* ((a (read))
       (b (read)))

  (format t "~A~%" (if (zerop (mod (* a b) 2))
                     "No"
                     "Yes")))

