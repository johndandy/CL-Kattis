;;;; Mixed Fractions

(loop for num = (read)
      for denom = (read)
      until (and (zerop num) (zerop denom))
          do (format t "~A ~A / ~A~%"
                       (truncate num denom)
                       (rem num denom)
                       denom))
