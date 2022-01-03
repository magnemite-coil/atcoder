(let ((a (read))
      (b (read))
      (s (concatenate 'list (read-line))))

  (defun judge-hyphen (p lst)
    (if (char= (nth p lst) #\-)
      t
      nil))

  (defun judge-length (q r lst)
    (if (= (length lst) (+ q r 1))
      t
      nil))

  (defun judge-unique (lst)
    (if (= (count #\- lst) 1)
      t
      nil))

  (format t "~A~%"
          (if (and (judge-hyphen a s)
                   (judge-length a b s)
                   (judge-unique s))
            "Yes"
            "No")))

