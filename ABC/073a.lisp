(let ((lst (concatenate 'list (read-line))))
  (format t "~A~%"
          (if (find #\9 lst)
            "Yes"
            "No")))

