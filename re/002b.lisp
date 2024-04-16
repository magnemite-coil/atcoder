(format t "~A~%" (remove-if #'(lambda (x) (find x "aiueo")) (read-line)))
