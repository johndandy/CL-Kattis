;;;; Last Factorial Digit

(defun ! (n a)
  (when (= n 0)
        (return-from ! a))
  (! (- n 1) (* n a)))

(dotimes (i (read))
  (write (second (multiple-value-list (floor (! (read) 1) 10))))
  (terpri))
