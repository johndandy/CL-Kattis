;;;; Zamka

(defun sum-digits (in-number)
  (loop for n = in-number then q
        for (q r) = (multiple-value-list (truncate n 10))
        sum r until (zerop q)))

(let ((l (read))
      (d (read))
      (x (read)))
    (loop while (/= (sum-digits l) x)
      do (incf l))
    (write l)
    (terpri)
    (loop while (/= (sum-digits d) x)
      do (decf d))
    (write d))
