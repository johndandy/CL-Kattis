;;;; Sum Squared Digits Function

(defun sum-squared-digits (base in-number)
  (loop for n = in-number then q
        for (q r) = (multiple-value-list (truncate n base))
        sum (* r r) until (zerop q)))

(dotimes (i (read))
  (write (read))
  (princ " ")
  (write (sum-squared-digits (read) (read)))
  (terpri))
