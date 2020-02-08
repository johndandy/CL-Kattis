;;;; Alphabet Spam

(loop for i across (read-line)
      count (upper-case-p i) into uppercase
      count (lower-case-p i) into lowercase
      count (eq i #\_) into whitespace
      sum 1.0 into total
      finally (progn 
                (write (/ whitespace total)) (terpri)
                (write (/ lowercase total)) (terpri)
                (write (/ uppercase total)) (terpri)
                (write (/ (- total whitespace lowercase uppercase)
                          total))))
