;;;; Pot

(loop repeat (read)
      for (q r) = (multiple-value-list (truncate (read) 10))
      sum (expt q r) into total
      finally (write total))
