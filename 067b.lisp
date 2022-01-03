(let* ((n (read))
       (k (read))
       (lst (sort (loop repeat n
                        collect (read))
                  #'>)))

  (format t "~A~%"
          (reduce #'+ (subseq lst 0 k))))

