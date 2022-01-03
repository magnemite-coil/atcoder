(let ((s (concatenate 'list (read-line))))
  (defun f (fl acc)
    (if (char= (car fl) #\Z)
      acc
      (f (cdr fl) (1+ acc))))

  (defun g (gl)
    (if (char= (car gl) #\A)
      gl
      (g (cdr gl))))

  (defun counter (lst)
    (let ((al (g lst)))
      (- (length al) (f (reverse al) 0))))

  (format t "~A~%"
          (counter s)))

;(setq x (concatenate 'list "QWERTYASDFZXCV"))

; (setq x (concatenate 'list "ASFJGHOGAKZZFEGA"))
; 
; (defun f (lst acc)
;   (if (char= (car lst) #\Z)
;     acc
;     (f (cdr lst) (1+ acc))))
; 
; (f (reverse x) 0)
; 
; (defun g (lst)
;   (if (char= (car lst) #\A)
;     lst
;     (g (cdr lst))))
; 
; 
