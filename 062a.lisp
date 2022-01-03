(let ((cl (list '(1 3 5 7 8 10 12)
                '(4 6 9 11)
                '(2)))
      (x (read))
      (y (read)))

  (defun judge (p lst)
    (if (null lst)
      nil
      (if (find p (car lst))
        (cons 1 (judge p (cdr lst)))
        (cons 0 (judge p (cdr lst))))))


  (format t "~A~%"
          (if (equal (judge x cl) (judge y cl))
            "Yes"
            "No")))

