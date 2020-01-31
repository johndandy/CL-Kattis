;;;; Speed Limit

(loop for logs = (read)
      until (eq logs -1)
      do (loop repeat logs
               for speed-limit = (read)
               for hours = (read)
               sum (* speed-limit (- hours hours-elapsed)) into miles-driven
               maximize hours into hours-elapsed
               finally (format t "~A miles~%" miles-driven)))
