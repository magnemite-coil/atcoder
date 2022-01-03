(let ((n (read))
      (s (concatenate 'list (read-line))))


  (defun most (lst)
    (labels ((f (l acc)
                (if (null l)
                  acc
                  (if (char= (car l) #\I)
                    (f (cdr l) (cons (1+ (car acc)) acc))
                    (f (cdr l) (cons (1- (car acc)) acc))))))
      (apply #'max (f lst '(0)))))

  (format t "~A~%"
          (most s)))


