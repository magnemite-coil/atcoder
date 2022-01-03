(defun f (x)
  (if (char= x #\1)
    #\9
    #\1))

(let* ((n (read))
       (l (concatenate 'list (write-to-string n))))

  (format t "~A~%" (concatenate 'string (mapcar #'f l))))

