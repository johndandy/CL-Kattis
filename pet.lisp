;;; Pet

(loop repeat 5
      collect (loop repeat 4 for grade = (read) sum grade) 
      into points
      finally (format t "~A ~A~%" (loop for max-index from 1 to 5
                                        for i in points
                                        until (eq i (apply 'max points))
                                        finally (return max-index))
                                  (apply 'max points)))
