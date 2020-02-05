;;;; Apaxiaaaaaaaaaaaans!

(loop for i across (read-line)
      for c = (first (last name))
      unless (eql i c)
             collect i into name
      finally (write-line (coerce name 'string)))
