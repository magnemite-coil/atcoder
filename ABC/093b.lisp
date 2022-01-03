(declaim (optimize (speed 3) (debug 0) (safety 0)))

(let ((a (read))
      (b (read))
      (k (read)))

  (defun small (p q &optional (acc nil))
    (if (= q 0)
      acc
      (small (1+ p) (1- q) (cons p acc))))


  (defun big (p q &optional (acc nil))
    (if (= q 0)
      acc
      (big (1- p) (1- q) (cons p acc))))


  (defun delete-small (p lst)
    (mapcar #'(lambda (x)
                (if (< x p)
                  p
                  x))
            lst))


  (defun delete-big (p lst)
    (mapcar #'(lambda (x)
                (if (> x p)
                  p
                  x))
            lst))


  (format t "~{~A~%~}"
          (sort (remove-duplicates (append (delete-big b (small a k))
                                           (delete-small a (big b k))))
                #'<)))

