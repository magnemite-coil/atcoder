(let ((r (read)))
  (format t "~A~%"
          (cond ((< r 1200) 'abc)
                ((< r 2800) 'arc)
                (t 'agc))))

