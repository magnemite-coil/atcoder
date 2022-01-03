(let ((l (concatenate 'list (read-line))))

  (defun f (lst)
    (let ((ret 0))
      (dolist (x lst)
        (if (char= x #\+)
          (incf ret)
          (decf ret)))
      ret))

  (format t "~A~%"
          (f l)))

