(let* ((l (sort (list (read) (read) (read)) #'<)))
  (format t "~A~%"
          (if (= (- (cadr l) (car l)) (- (caddr l) (cadr l)))
            'yes
            'no)))

