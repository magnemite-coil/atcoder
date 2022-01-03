; (let ((d (read))
;       (l '("Christmas" "Eve" "Eve" "Eve")))
;   (format t "~{~A ~}~%" (loop for i from 0 to (- 25 d)
;                               collect (nth i l))))


(let ((d (read))
      (c "Christmas")
      (e "Eve"))

  (format t "~A~{ ~A~}~%" c (loop repeat (- 25 d)
                                   collect e)))

