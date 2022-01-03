


(let* ((n (read))
       (l1 (loop repeat n
                 collect (read-line)))
       (flag (= (len (length l1))
                (length (remove-duplicates l1))))
       (l2 (mapcar #'(lambda (x)
                       (concatenate 'list x))
                   l1)))

  (format t "~s~%" l1)
  (format t "~s~%" l2))



