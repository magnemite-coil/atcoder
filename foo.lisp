(defun 5- (lst)
  (let ((l (car lst)))
    (if (null lst)
      nil
      (cons (- 5 l) (5- (cdr lst))))))


(5- '(1 2 3 4 5))



(setq l2 '(2 . 3))
(setq l2 '(1 . 1))
(setq l1 '(2 1 4))
(- (nth (1- (car l2)) l1) (cdr l2))
