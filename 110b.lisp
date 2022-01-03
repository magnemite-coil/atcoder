(let* ((n (read))
       (m (read))
       (x (read))
       (y (read))
       (lst_x (loop repeat n
                    collect (read)))
       (lst_y (loop repeat m
                    collect (read))))

  (format t "~A~%"
          (if (and (< (apply #'max lst_x) (apply #'min lst_y))
                   (< x (apply #'min lst_y))
                   (< (apply #'max lst_x) y))
            "No War"
            "War")))

