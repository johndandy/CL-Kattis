;;;; Baksetball One-on-One

(loop for i across (read-line)
      for j = j
      if (eq i #\A)
         do (setq j t)
      if (eq i #\B)
         do (setq j nil)
      if (eq i #\1)
         if j sum 1 into a
         else sum 1 into b
      else
         if j sum 2 into a
         else sum 2 into b
      finally (write (if (> a b) 'a 'b)))
