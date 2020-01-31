(loop repeat (read)
  do (loop for turtles = (read) then next-turtles
           for next-turtles = (read)
           until (zerop next-turtles)
           when (> next-turtles (* turtles 2)) sum (- next-turtles (* turtles 2)) into imports
           finally (write imports))
     (terpri))
