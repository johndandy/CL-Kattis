;;;; Pot

(let ((total 0)
      (current-number ()))
  (dotimes (i (read))
    (setq current-number (multiple-value-list (floor (read) 10)))
    (incf total (expt (first current-number) 
                      (second current-number))))
  (write total))
