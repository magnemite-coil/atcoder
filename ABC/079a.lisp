(let ((l (concatenate 'list (read-line))))

  (defun f (lst &optional (cnt 0))
    (if (>= cnt 3)
      t
      (if (null lst)
        nil
        (if (char= (car lst) (cadr lst))
          (f (cdr lst) (1+ cnt))
          (f (cdr lst) 0)))))




  (format t "~A~%"
          (if (or (and (eq (nth 0 l) (nth 1 l)) (eq (nth 1 l) (nth 2 l)))
                  (and (eq (nth 1 l) (nth 2 l)) (eq (nth 2 l) (nth 3 l))))
            "Yes"
            "No")))

