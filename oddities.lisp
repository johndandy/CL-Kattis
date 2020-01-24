;;;; Oddities

(dotimes (i (read))
  (if (evenp (write (read)))
      (write-line " is even")
      (write-line " is odd")))
