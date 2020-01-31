;;;; Poker Hand

(let (ranks)
  (loop repeat 5
    do (push (char (string (read)) 0) ranks))
  (loop for i in ranks
        maximize (count i ranks) into strength
        finally (write strength)))
