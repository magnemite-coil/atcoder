(defun read-list (x &optional ret)
  (if (< x 1)
    (reverse ret)
    (read-list (1- x) (cons (read) ret))))

(defun cal-min (lst p &optional (ans 0))
  (if (null lst)
    (* ans 2)
    (cal-min (cdr lst) p (+ (min (abs (- (car lst) p)) (car lst)) ans))))


(let* ((n (read))
       (k (read))
       (l (read-list n)))

    (format t "~A~%"
          (cal-min l k)))

