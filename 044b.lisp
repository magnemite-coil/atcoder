(let* ((w (concatenate 'list (read-line)))
       (lst (remove-duplicates
              (loop for i in w
                    collect (cons i (count i w)))
              :test #'equal)))

  (defun judge (l)
    (if (not (consp l))
      "Yes"
      (if (oddp (cdar l))
        "No"
        (judge (cdr l)))))

  (format t "~A~%" (judge lst)))

