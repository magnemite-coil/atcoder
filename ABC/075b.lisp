(defun read-list (x &optional ret)
  (if (< x 1)
    (reverse ret)
    (read-list (1- x) (cons (concatenate 'list (read-line)) ret))))


(let* ((h (read))
       (w (read))
       (l (read-list h)))

  (format t "~A~%"
          l))
