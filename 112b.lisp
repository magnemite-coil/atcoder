(let* ((n (read))
       (m (read))
       (l (loop repeat n
                collect (cons (read) (read))))
       (l2 (remove-if-not #'(lambda (x)
                              (<= (cdr x) m))
                          l))
       (l3 (sort (copy-list l2) #'< :key #'car)))

  (format t "~A~%"
          (if (null l3)
            "TLE"
            (caar l3))))

;
;  (format t "~~")
;  (format t "~S~%" n)
;  (format t "~S~%" m)
;  (format t "~S~%" l)
;  (format t "~S~%" l2)
;  (format t "~S~%" l3))
;
