(let ((a (concatenate 'list (read-line)))
      (b (concatenate 'list (read-line)))
      (ans '())
      (flag t))




  (mapcar (lambda (n m)
            (if (char= n m)
              nil
              (cond ((char= n #\@) (push m ans))
                    ((char= m #\@) (push n ans))
                    (t (push #\b ans)))))
          a b)

  (format t "ANS : ~A~%" ans)



  (mapcar (lambda (q)
            (cond ((char= q #\a) nil)
                  ((char= q #\t) nil)
                  ((char= q #\c) nil)
                  ((char= q #\o) nil)
                  ((char= q #\d) nil)
                  ((char= q #\e) nil)
                  ((char= q #\r) nil)
                  (t (setq flag nil)))) ans)
  (if flag
    (format t "You can win~%")
    (format t "You will lose~%")))
