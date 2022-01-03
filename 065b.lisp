(let* ((n (read))
       (vec (concatenate 'vector (loop repeat n
                                       collect (read)))))

  (defun f (v &optional (pos 0) (cnt 0))
    (if (> cnt n)
      -1
      (if (= pos 1)
        cnt
        (f v (1- (aref v pos)) (1+ cnt)))))

  (format t "~A~%"
          (f vec)))

