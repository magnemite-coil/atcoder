(let ((a (read))
      (b (read))
      (c (read)))

  (defun get-f (x)
    (car (concatenate 'list (symbol-name x))))

  (defun get-b (y)
    (car (reverse (concatenate 'list (symbol-name y)))))


  (format t "~A~%"
          (if (and (char= (get-b a) (get-f b)) (char= (get-b b) (get-f c)))
            'yes
            'no)))

