(let ((s (concatenate 'list (read-line))))

  (defun solve (lst &optional flag ans)
    (cond
      ((null lst) (concatenate 'string (reverse ans)))
      ((null flag) (solve (cdr lst) t (cons (car lst) ans)))
      (t           (solve (cdr lst) nil ans))))

  (format t "~A~%"
          (solve s)))

(setq l (loop for i from 1 to 10000
              collect i))


