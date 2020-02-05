;;;; Encoded Message

(loop repeat (read)
      for message = (read-line)
      for len = (sqrt (length message))
      do (loop repeat len
               for i = 0 then (1+ i)
               collect (loop for j across message
                             for k = 0 then (1+ k)
                             when (eq (- (rem k len) i) 0.0)
                               collect j) into decoded
               finally (loop for j in (reverse decoded)
                             do (princ (coerce j 'string))))
         (terpri))
