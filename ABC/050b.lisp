(let* ((n (read))
       (ts (loop repeat n
                 collect (read)))
       (m (read))
       (px (loop repeat m
                 collect (cons (read) (read))))
       (sum (reduce #'+ ts)))


  ; (format t "~A~%" n)
  ; (format t "~A~%" ts)
  ; (format t "~A~%" m)
  ; (format t "~A~%" px)
  ; (format t "~A~%" sum)


  (defun cal (l1 l2s)
    (let ((l2 (car l2s)))

      ;(format t "l2s : ~A~%" l2s)
      ;(format t "l2 : ~A~%" l2)

      (if (null l2s)
        nil
        (cons (- (nth (1- (car l2)) l1) (cdr l2)) (cal (cdr l1) (cdr l2s))))))


  (format t "~A~%"
          (cal ts px)))





