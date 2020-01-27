;;;; Trik

(let ((cups (list t nil nil))
      (moves (read-line)))
  (loop for i across moves
    do (case i
         (#\A (rotatef (first cups) (second cups)))
         (#\B (rotatef (second cups) (third cups)))
         (#\C (rotatef (first cups) (third cups)))))
  (write (1+ (position t cups))))
