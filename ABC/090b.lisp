(defun f (p)
  (concatenate 'list (write-to-string p)))


(defun g (lst)
  (if (and (char= (car lst) (car (reverse lst)))
           (char= (cadr lst) (cadr (reverse lst))))
    t
    nil))


(let ((a (read))
      (b (read)))

  (format t "~A~%"
          (loop for i from a to b
                when (g (f i))
                count i)))


