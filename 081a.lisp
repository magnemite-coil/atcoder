(let ((x (mapcar #'digit-char-p (concatenate 'list (read-line)))))
  (format t "~A~%"
          (reduce #'+ x)))

