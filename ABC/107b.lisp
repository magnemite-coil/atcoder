(defun remove-white-rows (p)
  (if (equal (remove-duplicates p) (list #\.))
    nil
    p))


;(defun collect-columns (q n)
;  (list (mapcar #'(lambda (r)
;                    (nth n r))
;                q)))
;
;
;
;(defun remove-white-columns (s)
;  (loop for i from 0 to (length (car s))
;        when (equal (remove-duplicates (collect-columns s i)) (list #\.))
;        collect (mapcar #'(lambda (r)
;                            (nth i r))
;                        s)))
;




(defun remove-white-columns (s)
  (if (every #'null s)
    nil
    (if (equal (remove-duplicates (mapcar #'car s))
               '(#\.))
      (remove-white-columns (mapcar #'cdr s))
      (cons (mapcar #'car s) (remove-white-columns (mapcar #'cdr s))))))



(remove-white-columns '((#\# #\# #\. #\#)
                        (#\# #\# #\. #\#)
                        (#\. #\# #\. #\#)))

;=> '((#\# #\# #\#) (#\# #\# #\#) (#\. #\# #\#))
;
;
;(setq s '((0 1 2 3) (4 5 6 7) (8 9 10 11)))
;
;(mapcar #'cdr s)
;
;
;(mapcar #'cdr
;(mapcar #'cdr s))
;
;(mapcar #'cdr
;(mapcar #'cdr
;(mapcar #'cdr s)))
;
;
;(mapcar #'cdr
;(mapcar #'cdr
;(mapcar #'cdr
;(mapcar #'cdr s))))
;
;
;(mapcar #'cdr
;(mapcar #'cdr
;(mapcar #'cdr
;(mapcar #'cdr
;(mapcar #'cdr s)))))
;
;(every #'null '(NIL NIL NIL))
;
;
;(remove-white-columns '((0 1 2 3) (4 5 6 7) (8 9 10 11)))
;
;(setq s '((0 1 2 3) (4 5 6 7) (8 9 10 11)))
;
;
;
;(cons (mapcar #'car s) (mapcar #'cdr s))
;

;(collect-columns '((#\# #\# #\. #\#) (#\# #\# #\. #\#) (#\. #\# #\. #\#)) 3)
;
;(collect-columns
;'((#\. #\. #\. #\. #\. #\.) (#\. #\. #\. #\. #\# #\.) (#\. #\# #\. #\. #\. #\.) (#\. #\. #\# #\. #\. #\.)
; (#\. #\. #\# #\. #\. #\.) (#\. #\. #\. #\. #\. #\.) (#\. #\# #\. #\. #\# #\.))
;2)
;
;



(let* ((h (read))
       (w (read))
       (l1 (loop repeat h
                 collect (read-line)))
       (l2 (mapcar #'(lambda (x)
                       (concatenate 'list x)) l1))
       (l3 (remove 'nil (mapcar #'remove-white-rows l2)))
       (l4 (remove-white-columns (remove-white-columns l2)))
       (l5 (mapcar #'(lambda (x)
                       (concatenate 'string x))
                   l4)))


 ; (format t "~S~%" h)
 ; (format t "~S~%" w)
 ; (format t "~S~%" l1)
 ; (format t "~S~%" l2)
 ; (format t "~S~%" l3)
 ; (format t "~S~%" l4)
 ; (format t "~S~%" l5)
  (format t "~{~A~%~}" l5)




  )
