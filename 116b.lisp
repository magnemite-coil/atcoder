(defun next-a (x)
  (if (evenp x)
    (/ x 2)
    (1+ (* n 3))))

(defun gen-a (x &optional (acc '()))
  (if (>= (car acc) 1000000)
    nil
    (cons (gen-a x) (cons (next-a x) (cons x acc)))))


(let* ((s (read)))
  (format t "~a~%" (reverse (gen-a s))))


