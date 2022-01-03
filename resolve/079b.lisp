(defun lucas (x)
  (setq a 2)
  (setq b (setq c 1))
  (dotimes (i (- x 1))
    (setq b (setq c (+ a (setq a b)))))
  c)


(format t "~A~%"
        (loop for i from 0 to 86
              collect (lucas i)))
