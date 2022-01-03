(defun solve (x)
  (if (zerop (mod x 111))
    x
    (solve (+ x 1))))


(let ((n (read)))

  (format t "~A~%" (solve n)))


(princ
  (* (ceiling (/ (read) 111))
     111))


(defun a (n m)
  (if (<= n (+ (* 100 m) (* 10 m) m))
    (+ (* 100 m) (* 10 m) m)
    (a n (1+ m))))

(princ (a (read) 1))



(defun f (x cnt)
  (if (<= x (* cnt 111))
    (+ (* cnt 111))
    (f x (1+ cnt))))

(let ((n (read)))

  (format t "~A~%" (f n 1)))




