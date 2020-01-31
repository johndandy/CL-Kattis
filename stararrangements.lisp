;;;; Star Arrangements

(let ((s (read)))
  (format t "~A:~%" s)
  (loop for i from 2 to (ceiling s 2)
    do (when (or (eq (mod s (1- (* i 2))) i)
                 (eq (mod s (1- (* i 2))) 0))
             (format t "~A,~A~%" i (1- i)))
       (when (or (eq (mod s (* i 2)) i)
                 (eq (mod s (* i 2)) 0))
             (format t "~A,~A~%" i i))))
