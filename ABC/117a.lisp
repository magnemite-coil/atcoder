(let ((a (read))
      (b (read)))

  (format t "~A~%" (if (zerop (mod b a))
                     (+ a b)
                     (- b a))))

