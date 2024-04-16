(let* ((lst (concatenate 'list (read-line)))
       (lst2 (mapcar #'type-of lst)))

  (format t "~A~%" lst)
  (format t "~S~%" lst)
  (format t "~A~%" lst2)
  (format t "~S~%" lst2))


(find #\a "aiueo")
(concatenate 'list "aiueo")
(find #\a (concatenate 'list "aiueo"))





(format t "~A~%"
        (remove-if #'(lambda (x)
                       (find x "aiueo"))
                   (read-line)))




(remove-if #'(lambda (x)
               (find x "aiueo"))
           "hello")

