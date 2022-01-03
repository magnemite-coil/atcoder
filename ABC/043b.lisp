(defun frontspace (l)
  (if (null l)
    nil
    (if (eq (car l) #\B)
      (frontspace (cdr l))
      (cons (car l) (frontspace (cddr l))))))

(setq lst1 (reverse (concatenate 'list "01B0")))
(setq lst2 (reverse (concatenate 'list "0BB1")))

(frontspace lst1)
(frontspace lst2)

