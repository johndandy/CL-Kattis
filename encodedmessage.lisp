;;;; Encoded Message

(loop repeat (read)
      for message = (read-line)
      for message-matrix = nil
      do (loop for i from 0 to 
               do (loop repeat (sqrt (length message))

