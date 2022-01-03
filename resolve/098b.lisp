(let ((n (read))
      (s (concatenate 'list (read-line))))

  (format t "~A~%" (loop for i from 1 to n
                         maximize (length (intersection (remove-duplicates (subseq s 0 i))
                                                        (remove-duplicates (subseq s i)))))))


