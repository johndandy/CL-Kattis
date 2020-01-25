;;;; Datum

(case (nth-value 6 (decode-universal-time
                     (encode-universal-time 0 0 0 (read) (read) 2009 0) 0))
  (0 (write 'monday))
  (1 (write 'tuesday))
  (2 (write 'wednesday))
  (3 (write 'thursday))
  (4 (write 'friday))
  (5 (write 'saturday))
  (6 (write 'sunday)))
