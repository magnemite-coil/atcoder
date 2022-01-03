(let ((a (read))
      (b (read)))

  (format t "~A~%"
          (cond ((= a b) 'equal)
                ((> a b) 'greater)
                (t 'less))))

