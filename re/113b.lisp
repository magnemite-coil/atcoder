;(defun average-temperature (x y)
;  (mapcar #'(lambda (x)
;              (cons (car x) (- y (* 0.006 (cdr x)))))
;          x))
;
;
;(defun error-function (x y)
;  (mapcar #'(lambda (x)
;              (cons (car x) (abs (- y (cdr x)))))
;          x))
;
;
(let* ((n (read))
       (m (read))
       (a (read))
       (l (loop for i from 1 to n
                collect (cons i (read)))))

  (defun average-temperature (x)
    (cons (car x) (- m (* 0.006 (cdr x)))))

  (defun error-function (x)
    (cons (car x) (abs (- a (cdr x)))))



  (let* ((l2 (mapcar #'average-temperature l))
         (l3 (mapcar #'error-function l2)))

    ;  (format t "~S~%" n)
    ;  (format t "~S~%" m)
    ;  (format t "~S~%" a)
    ;  (format t "~S~%" l)
    ;  (format t "~S~%" l2)
    ;  (format t "~S~%" l3)
    (format t "~A~%" (caar (sort (copy-list l3) #'< :key #'cdr)))))

