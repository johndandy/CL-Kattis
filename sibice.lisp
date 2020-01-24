;;;; Sibice

(let ((number-matches (read))
      (width (read))
      (height (read))
      (match-length 0))
  (dotimes (i number-matches)
    (setq match-length (read))
    (if (or (<= match-length width)
              (<= match-length height)
              (<= match-length (sqrt (+ (* width width) 
                                        (* height height)))))
          (write-line "DA")
          (write-line "NE"))))
