(let* ((lst1 (list (car (concatenate 'list (symbol-name (read)))) (car (concatenate 'list  (symbol-name (read))))))
       (lst2 (sort (copy-list lst1) #'char-lessp)))

  (format t "~A~%"
          (if (= (length (remove-duplicates lst1)) 1)
            #\=
            (if (equal lst1 lst2)
              #\<
              #\>))))

