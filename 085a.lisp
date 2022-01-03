(let* ((l (concatenate 'list (read-line))))

  (format t "~A~%"
          (concatenate 'string (append (concatenate 'list "2018") (subseq l 4)))))

; (setq x (concatenate 'list "2018"))
; (setq y (concatenate 'list "2017/01/07"))
; (append x (subseq y 4))
