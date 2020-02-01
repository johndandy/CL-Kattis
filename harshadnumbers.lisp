;;;; Harshad Numbers

(defun sum-digits (number)
  (loop for n = number then q
        for (q r) = (multiple-value-list (truncate n 10))
        sum r until (zerop q)))

(defun nivenp (n)
  (eq (rem n (sum-digits n)) 0))

(loop for n = (read) then (1+ n)
      until (nivenp n)
      finally (write n))
  
