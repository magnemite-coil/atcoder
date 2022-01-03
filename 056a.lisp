(let* ((lst (concatenate 'list (read-line)))
       (a (car lst))
       (b (caddr lst)))

  (defun f (x y)
    (if (char= x #\H)
      y
      (if (char= y #\H)
        #\D
        #\H)))

  (format t "~A~%"
          (f a b)))

