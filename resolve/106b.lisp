(defun cal-divisor (num)
  (loop for i from 1 to num
        count (zerop (mod num i))))


(let* ((n (read))
       (l (loop for i from 1 to n by 2
                collect i)))

  (format t "~A~%"
          (count 8 (mapcar #'cal-divisor l))))

