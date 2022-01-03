(defun divide (lst acc)
  (if (null lst)
    acc
    (divide (cddr lst) (cons (cons (car lst) (cadr lst)) acc))))


(setf l '(105 119 105 119 105 119))


(defun gen-odd (lst)
  (labels ((rec (lst acc)
                (if (null lst)
                  acc
                  (rec (cddr lst) (cons (car lst) acc)))))
    (reverse (rec lst nil))))


(defun gen-even (lst)
  (labels ((rec (lst acc)
                (if (null lst)
                  acc
                  (rec (cddr lst) (cons (cadr lst) acc)))))
    (reverse (rec lst nil))))




(let* ((n (read))
       (l (loop repeat n
                collect (read)))
       (odd-lst (gen-odd l))
       (even-lst (gen-even l))
       (mode-even (car (sort 







