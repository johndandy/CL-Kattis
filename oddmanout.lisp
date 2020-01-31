;;;; Odd Man Out

(loop for case-number from 1 to (read)
      do (loop repeat (read)
               collect (read) into guests
               finally (format t "Case #~A: ~A~%" case-number (loop for i in guests
                                                                    do (when (eq (count i guests) 1)
                                                                             (return i))))))
