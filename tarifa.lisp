;;;; Tarifa

(let ((x (read))
      (n (read)) 
      (data-used 0))
  (dotimes (i n)
    (incf data-used (read)))
  (write (- (* x (+ n 1)) data-used)))
