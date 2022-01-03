(let* ((n (read))
      (sum (reduce #'+ (mapcar #'digit-char-p (concatenate 'list (write-to-string n))))))

  (format t "~A~%"
          (if (zerop (mod n sum))
            "Yes"
            "No")))

