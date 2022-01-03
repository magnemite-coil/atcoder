(let* ((n (read))
       (s (concatenate 'list (read-line))))


  (defun f (lst &optional (acc 0))
    (if (null lst)
      acc
      (if 
