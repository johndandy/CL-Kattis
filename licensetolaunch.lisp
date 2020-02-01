;;;; License to Launch

(let ((min-index 0)
      (days (1- (read)))
      (min-val (read)))
  (loop for i from 1 to days
        for val = (read)
        do (when (< val min-val)
                 (setq min-val val)
                 (setq min-index i))
        finally (write min-index)))
