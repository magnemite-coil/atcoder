(let ((n (read))
      (lst (reverse (loop for i from 0 to 6
                          collect (expt 2 i)))))

  (defun judge (x l)
    (if (>= x (car l))
      (car l)
      (judge x (cdr l))))

  (format t "~A~%"
          (judge n lst)))

