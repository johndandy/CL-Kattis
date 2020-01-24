;;;; Spavanac

(let ((hour (read))
      (minute (read)))
  (if (< (- minute 45) 0)
      (progn (decf hour)
             (incf minute 15))
      (decf minute 45))
  (when (< hour 0)
        (setq hour 23))
  (format t "~A ~A" hour minute))
