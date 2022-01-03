(defun create-ns (end lst &optional (acc nil) (i 0))
  (cond ((= i end) (reverse (cons 0 acc)))
        ((null lst) (reverse (append (loop repeat (1+ (- end i)) collect 0) acc)))
        ((= i (car lst)) (create-ns end (cdr lst) (cons 1 acc) (1+ i)))
        (t (create-ns end lst (cons 0 acc) (1+ i)))))


(defun cal-left (q lst &optional (acc 0))
  (if (= q 0)
    acc
    (cal-left (1- q) (cdr lst) (+ (car lst) acc))))


(defun cal-right (r lst &optional (acc 0))
  (if (= r (length lst))
    acc
    (cal-right (1+ r) lst (+ (nth r lst) acc))))



(let* ((n (read))
       (m (read))
       (x (read))
       (ms (sort (loop repeat m
                       collect (read))
                 #'<))
       (ns (create-ns n ms))
       (left (cal-left x ns))
       (right (cal-right x ns)))

  (format t "~A~%" (min left right)))


