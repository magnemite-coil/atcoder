(let* ((a (write-to-string (read)))
       (b (write-to-string (read)))
       (x (parse-integer (concatenate 'string a b)))
       (root (sqrt x))
       (iroot (isqrt x)))

  (format t "~A~%"
          (if (= root iroot)
            "Yes"
            "No")))

