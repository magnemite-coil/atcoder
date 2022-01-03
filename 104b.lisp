(let* ((l (concatenate 'list (read-line)))
       (check-c-list (reverse (cdr (reverse (cddr l)))))
       (check-lowercase-list (remove #\C check-c-list)))
  (format t "~A~%"
          (if (and (= (count #\C check-c-list) 1)
                   (every #'lower-case-p check-lowercase-list)
                   (char= (car l) #\A)
                   (lower-case-p (cadr l))
                   (lower-case-p (car (last l))))
            'ac
            'wa)))

