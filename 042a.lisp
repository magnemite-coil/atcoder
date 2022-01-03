(let* ((lst (list (read) (read) (read)))
       (lst2 (remove-duplicates
               (loop for i in lst
                     collect (cons i (count i lst)))
               :test #'equal))
       (lst3 (loop for i in lst
                   collect (cons i (count i lst)))))




  (format t "~A~%" lst)
  (format t "~A~%" lst2)
  (format t "~A~&" lst3)






  (format t "~A~%"
          (if
            (or
              (equal lst2 '((5 . 2) (7 . 1)))
              (equal lst2 '((7 . 1) (5 . 2))))
            'yes 'no)))

