(let ((a (concatenate 'list (read-line)))
      (b (concatenate 'list (read-line)))
      (c (concatenate 'list (read-line))))

  (defun judge (chr)
    (cond ((char= chr #\a) (if a (judge (pop a)) (format t "~A~%" #\A)))
          ((char= chr #\b) (if b (judge (pop b)) (format t "~A~%" #\B)))
          ((char= chr #\c) (if c (judge (pop c)) (format t "~A~%" #\C)))))

  (judge #\a))

