(defun read-list (x &optional ret)
  (if (< x 1)
    ret
    (read-list (1- x) (cons (read) (cons (read) ret)))))

(defun count-people (lst &optional (ans 0))
  (if (null lst)
    ans
    (count-people (cddr lst) (+ (1+ (- (cadr lst) (car lst))) ans))))

(let* ((n (read))
       (l (read-list n)))

  (format t "~A~%"
          (count-people l)))

