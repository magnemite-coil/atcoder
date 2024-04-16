(let ((a (concatenate 'list (read-line)))
      (b (concatenate 'list (read-line))))

  (defun create-chklst (lst1 lst2)
    (let ((lst '()))
      (mapcar #'(lambda (n m)
                  (if (char= n m)
                    nil
                    (cond ((char= n #\@) (push m lst))
                          ((char= m #\@) (push n lst))
                          (t (push #\b lst)))))
              lst1 lst2)
      lst))

  ;;; (format t "~A~%" (create-chklst a b))

  (defun check-lst-p (lst1)
    (not (member 'nil
                 (mapcar #'(lambda (c)
                             (if (find c (concatenate 'list "atcoder"))
                               t
                               nil))
                         lst1))))

  ;;; (format t "~S~%" (check-lst-p (create-chklst a b)))


  (format t "~A~%"
          (if (check-lst-p (create-chklst a b))
            "You can win"
            "You will lose")))

