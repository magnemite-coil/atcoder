(defun our-remove-if (fn lst)
  (if (null lst)
    nil
    (if (funcall fn (car lst))
      (our-remove-if fn (cdr lst))
      (cons (car lst) (our-remove-if fn (cdr lst))))))


(setq l '(1 2 3 4 5 6 7 8 9))
(our-remove-if #'evenp l)
;=> (1 3 5 7 9)


