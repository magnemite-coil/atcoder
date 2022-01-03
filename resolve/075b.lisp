#-swank
(unless (member :child-sbcl *features*)
  (quit
    :unix-status
    (process-exit-code
      (run-program *runtime-pathname*
                   `("--control-stack-size" "128MB"
                     "--noinform" "--disable-ldb" "--lose-on-corruption" "--end-runtime-options"
                     "--eval" "(push :child-sbcl *features*)"
                     "--script" ,(namestring *load-pathname*))
                   :output t :error t :input t))))


(defparameter h (read))
(defparameter w (read))
(defparameter m (concatenate 'vector (loop repeat h collect (read-line))))
(defparameter wall #\#)



(defun walkable (y x)
  (remove-if (lambda (p)
               (let ((y (car p))
                     (x (cdr p)))
                 (char= (aref (aref m y) x) wall)))
             (neighbors y x)))

(defun walkable-not (y x)
  (remove-if (lambda (p)
               (let ((y (car p))
                     (x (cdr p)))
                 (not (char= (aref (aref m y) x) wall))))
             (neighbors y x)))


(defun neighbors (y x)
  (remove-if #'null
             (mapcan (lambda (line)
                       (mapcar (lambda (p)
                                 (let ((ny (car p))
                                       (nx (cdr p)))
                                   (when (and (<= 0 ny) (<= 0 nx) (< ny h) (< nx w) (not (equal (cons y x) (cons ny nx))))
                                     p)))
                               line))
                     (loop for i from (- y 1) to (+ y 1) collect
                           (loop for j from (- x 1) to (+ x 1) collect
                                 (cons i j))))))

(loop for i below h do
      (progn
        (loop for j below w do
              (princ (if (char= (aref (aref m i) j) wall)
                       wall
                       (length (walkable-not i j)))))
        (fresh-line)))

