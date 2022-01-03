(let ((a (read))
      (b (read))
      (c (read))
      (flag nil))

  (loop named foo
        for i from a to (* a 100) by a
        if (= (mod i b) c) do (progn (setq flag t)
                                     (return-from foo)))

  (format t "~A~%"
          (if flag 'yes 'no)))

