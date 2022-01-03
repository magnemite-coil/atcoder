(let* ((n (read))
       (l (loop repeat n
                collect (read))))

  (defun divisible (p)
    (zerop (mod p 2)))

  (defun divided (q)
    (/ q 2))

  (defun recursive-d (lst &optional (cnt 0))
    (if (not (every #'identity (mapcar #'divisible lst)))
        cnt
        (recursive-d (mapcar #'divided lst) (1+ cnt))))

  (format t "~A~%"
          (recursive-d l)))

