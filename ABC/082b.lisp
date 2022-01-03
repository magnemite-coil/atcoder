(let ((s1 (sort (concatenate 'list (read-line)) #'char-lessp))
      (s2 (sort (concatenate 'list (read-line)) #'char-greaterp)))


  (format t "~A~%" s1)
  (format t "~A~%" s2)


  (defun f (lst1 lst2 &optional flag)

    (cond ((or (null lst1) (null lst2)) 

      ((char< (car lst1) (car lst2)) (progn (setq flag t) (f (cdr lst1) (cdr lst2))))
          ((char= (car lst1) (car lst2)) (progn (setq flag t) (f (cdr lst1) (cdr lst2))))



    (if (char< (car lst1) (car lst2))
      "Yes"
      (if (not (char= (car lst1) (car lst2)))
        "No"
        (f (cdr lst1) (cdr lst2)))))




  (format t "~A~%" (f s1 s2)))








