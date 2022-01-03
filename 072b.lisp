(let ((s (concatenate 'list (read-line))))

  (defun f (lst &optional ans)
    (if (null lst)
      (reverse ans)
      (f (cddr lst) (cons (car lst) ans))))

  (format t "~A~%"
          (concatenate 'string (f s))))

