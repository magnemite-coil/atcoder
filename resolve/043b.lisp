(let* ((s (concatenate 'list (read-line)))
       (l '()))

  (loop for i in s
        if (char= i #\0) do (push i l)
        else if (char= i #\1) do (push i l)
        else do (pop l))

  (format t "~A~%" (concatenate 'string (reverse l))))



