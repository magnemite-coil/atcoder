(let* ((s (reverse (cdr (reverse (concatenate 'list (read-line))))))
       (len (length s)))

  (defun f (l)
    (let ((lst1 (subseq l 0 (truncate (length l) 2)))
          (lst2 (subseq l (truncate (length l) 2))))

      (if (equal lst1 lst2)
        (length l)
        (f (reverse (cdr (reverse l)))))))

  (format t "~A~%"
          (f s)))




;(setq lst (concatenate 'list "abaababaab"))
;
;
;(setq lst '(0 1 2 3 4 5 6 7))
;(setq lst1 (subseq lst 0 (truncate (length lst) 2)))
;(setq lst2 (subseq lst (truncate (length lst) 2)))
