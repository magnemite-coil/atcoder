(let ((x (concatenate 'list (read-line))))

  (defun comma-to-space (lst)
    (labels ((f (l acc)
                (if (null l)
                  acc
                  (if (char= (car l) #\,)
                    (f (cdr l) (cons #\Space acc))
                    (f (cdr l) (cons (car l) acc))))))
      (reverse (f lst nil))))

  (format t "~A~%"
          (concatenate 'string (comma-to-space x))))

