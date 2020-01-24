;;;; Nasty Hacks

(let ((r 0)
      (e-c 0))
  (dotimes (i (read))
    (setq r (read))
    (setq e-c (- (read) (read)))
    (cond ((< r e-c)
           (write-line "advertise"))
          ((> r e-c)
           (write-line "do not advertise"))
          ((= r e-c)
           (write-line "does not matter")))))
  
