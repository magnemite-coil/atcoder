(let* ((h (read))
       (w (read))
       (center (loop repeat h
                     collect (concatenate 'list "#" (read-line) "#")))
       (edge (loop repeat (+ w 2)
                   collect #\#)))

  (defun f (l)
    (concatenate 'string l))

  (format t "~A~%" (f edge))
  (format t "~{~A~%~}" (mapcar #'f center))
  (format t "~A~%" (f edge)))

