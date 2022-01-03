(defun less-than (x y)
  (< (abs (- 753 x)) (abs (- 753 y))))


(defun get-options (x)
  (mapcar #'parse-integer
          (mapcar #'(lambda (x)
                      (concatenate 'string x))
                  (loop for i from 0 to (- (length x) 3)
                        collect (list (nth i x) (nth (1+ i) x) (nth (+ i 2) x))))))


(let ((s (concatenate 'list (read-line))))

  ; (format t "~S~%" s)

  ;  (format t "~S~&"
  ;          (mapcar #'(lambda (x)
  ;                      (concatenate 'string x))
  ;                  (loop for i from 0 to (- (length s) 3)
  ;                        collect (list (nth i s) (nth (1+ i) s) (nth (+ i 2) s)))
  ;


  ; (format t "~S~%" (get-options s))

  (format t "~A~%" (abs (- 753 (car (sort (copy-list (get-options s)) #'less-than))))))

