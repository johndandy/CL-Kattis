;;;; Symmetric Order

(let (names)
  (loop for number-of-names = (read)
        for i = 1 then (1+ i)
        while (/= number-of-names 0)
    do (format t "SET ~A~%" i)
       (setq names ())
       (dotimes (j number-of-names)
         (if (evenp j)
             (write-line (read-line))
             (push (read-line) names)))
       (dolist (j names)
         (write-line j))))
