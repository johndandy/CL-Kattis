;;;; Seven Wonders

(loop for card across (read-line)
      when (eq card #\T) sum 1 into tablets
      when (eq card #\C) sum 1 into compasses
      when (eq card #\G) sum 1 into gears
      finally (write (+ (* tablets tablets)
                        (* compasses compasses)
                        (* gears gears)
                        (if (or (zerop tablets)
                                (zerop compasses)
                                (zerop gears))
                            0
                            (* 7 (min tablets compasses gears))))))
      
