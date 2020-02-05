;;;; Beavergnaw

(loop for d = (read)
      for v = (read)
      until (and (zerop d) (zerop v))
      do (write (coerce (expt (- (expt d 3)
                                 (/ (* v 6) pi))
                              (/ 1 3)) 
                        'single-float))
         (terpri))
