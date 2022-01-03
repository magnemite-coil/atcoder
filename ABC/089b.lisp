(let* ((n (read))
       (len (length (remove-duplicates (loop repeat n
                                   collect (read))))))

  (format t "~A~%"
          (if (= len 3)
            "Three"
            "Four")))

