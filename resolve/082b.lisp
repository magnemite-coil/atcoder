(let ((s1 (sort (read-line) #'char<))
      (s2 (sort (read-line) #'char>)))

  (format t "~A~%"
          (if (string< s1 s2)
            "Yes"
            "No")))

