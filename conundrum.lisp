;;;; Cryptographer's Conundrum

(let ((total 0)
      (message (read-line)))
  (loop for i across message
        for j from 1 to (length message) 
    do (case (mod j 3)
         (0 (unless (eq i #\R)
                    (incf total)))
         (1 (unless (eq i #\P)
                    (incf total)))
         (2 (unless (eq i #\E)
                    (incf total)))))
  (write total))
