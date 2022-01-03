(let ((s (concatenate 'list (read-line))))

  (format t "~A~%"
          (if (= (length s) (length (remove-duplicates s)))
            "yes"
            "no")))

