(let* ((n (read))
       (s (reduce #'+ (mapcar #'digit-char-p (concatenate 'list (write-to-string n))))))

  (format t "~A~%"
          (if (zerop (mod n s))
            "Yes"
            "No")))

