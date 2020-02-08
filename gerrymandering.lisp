;;;; Gerrymandering

(let ((precincts (read))
      (districts))
  (loop repeat (read)
        do (push (list 0 0) districts))
  (loop repeat precincts
        for district = (1- (read))
        do (incf (first (nth district districts)) (read))
           (incf (second (nth district districts)) (read)))
  (loop for district in districts
        for a = (first district)
        for b = (second district)
        for wasted-a = (- a (1+ (floor (+ a b) 2)))
        for wasted-b = (- b (1+ (floor (+ a b) 2)))
        if (> a b)
           sum wasted-a into total-wasted-a and
           sum b into total-wasted-b and
           do (format t "A ~A ~A~%" wasted-a b)
        else
           sum a into total-wasted-a and
           sum wasted-b into total-wasted-b and
           do (format t "B ~A ~A~%" a wasted-b)
        sum (+ a b) into total-votes
        finally (write (/ (abs (- total-wasted-a total-wasted-b)) 
                          (coerce total-votes 'float)))))
