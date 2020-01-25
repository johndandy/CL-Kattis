;;;; Grass Seed Inc.

(let ((total 0)
      (cost (read)))
  (dotimes (i (read))
    (incf total (* cost (read) (read))))
  (write total))
