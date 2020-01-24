;;;; Cold-puter Science

(let ((total 0))
  (dotimes (n (read))
    (when (< (read) 0)
          (incf total)))
  (write total))
