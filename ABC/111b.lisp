(let ((n (read)))

  (format t "~A~%" (cond ((<= n 111) 111)
                         ((<= n 222) 222)
                         ((<= n 333) 333)
                         ((<= n 444) 444)
                         ((<= n 555) 555)
                         ((<= n 666) 666)
                         ((<= n 777) 777)
                         ((<= n 888) 888)
                         ((<= n 999) 999))))



(princ (* (truncate (+(read) 110) 111) 111))



(defun ok (x)
  (equal (mod x 111) 0))

(defun solve (x)
  (if (ok x) x (solve (+ x 1))))

(print (solve (read)))
