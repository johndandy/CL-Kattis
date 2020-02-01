;;;; Kornislav

(defun read-list (len) 
  (loop repeat len
        collect (read)))

(let ((steps (sort (read-list 4) #'<)))
  (write (* (first steps) 
            (third steps))))
