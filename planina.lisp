;;;; Planina

(let ((total 4))
  (loop for i from 1 to (read)
    do (incf total (+ (* 3 (expt 4 (- i 1))) 
                      (expt 2 i))))
  (write total))
