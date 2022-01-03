(let ((c (read-char)))
  (format t "~A~%"
          (if (find c (concatenate 'list "aiueo"))
            "vowel"
            "consonant")))

