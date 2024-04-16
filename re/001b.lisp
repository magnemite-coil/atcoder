(let* ((m (read))
       (vv (cond ((< m 100) "00")
                 ((<= m 5000) (format nil "~2,'0d" (* m (expt 10 -2))))
                 ((<= m 30000) (+ (* m (expt 10 -3)) 50))
                 ((<= m 70000) (+ (/ (- (/ m 1000) 30) 5) 80))
                 (t 89))))

  (format t "~A~%" vv))

