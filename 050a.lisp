(let ((a (read))
      (op (read))
      (b (read)))

  (format t "~A~%" (funcall op a b)))

