(let ((s (concatenate 'string (sort (concatenate 'list (read-line))
                                    #'char-lessp))))

  (format t "~A~%"
          (if (string= s "abc")
            "Yes"
            "No")))

