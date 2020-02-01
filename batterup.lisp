;;;; Batter Up

(loop repeat (read)
      for this-at-bat = (read)
      unless (< this-at-bat 0)
        sum this-at-bat into batting-average
        and sum 1 into total-at-bats
      finally (write (/ (coerce batting-average 'float) total-at-bats)))
