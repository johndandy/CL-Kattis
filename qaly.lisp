;;;; Quality-Adjusted Life-Year

(let ((qaly 0))
  (dotimes (i (read))
    (incf qaly (* (read) (read))))
  (write qaly))
