(let* ((lst (list (read) (read) (read)))
       (lst2 (remove-duplicates
               (loop for i in lst
                     collect (cons i (count i lst)))
               :test #'equal)))

  (format t "~A~%"
          (if
            (or (equal lst2 '((5 . 2) (7 . 1)))
                (equal lst2 '((7 . 1) (5 . 2))))
            'yes 'no)))

