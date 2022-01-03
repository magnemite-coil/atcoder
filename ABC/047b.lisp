(let* ((w (read))
       (h (read))
       (n (read))
       (lst (loop repeat n
                  collect (list (read) (read) (read))))
       (x1 0)
       (x2 w)
       (y1 0)
       (y2 h))

  (defun adjust (ls)
    (let ((l (car ls)))

      ;(format t "l : ~A~%" l)

      (if (null ls)
        (format t "~A~%" (* (max (- x2 x1) 0) (max (- y2 y1) 0)))
        (cond ((= (caddr l) 1) (progn (setq x1 (max x1 (car l))) (adjust (cdr ls))))
              ((= (caddr l) 2) (progn (setq x2 (min x2 (car l))) (adjust (cdr ls))))
              ((= (caddr l) 3) (progn (setq y1 (max y1 (cadr l))) (adjust (cdr ls))))
              ((= (caddr l) 4) (progn (setq y2 (min y2 (cadr l))) (adjust (cdr ls))))))))

  (adjust lst))

