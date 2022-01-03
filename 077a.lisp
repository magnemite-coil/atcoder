(let ((c1 (concatenate 'list (read-line)))
      (c2 (concatenate 'list (read-line))))

  (format t "~A~%"
          (if (equal (reverse c1) c2)
            'yes
            'no)))

