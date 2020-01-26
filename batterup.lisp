;;;; Batter Up

(let ((total-at-bats (read))
      (this-at-bat 0)
      (batting-average 0))
  (dotimes (i total-at-bats)
    (setq this-at-bat (read))
    (if (< this-at-bat 0)
        (decf total-at-bats)
        (incf batting-average this-at-bat)))
  (write (/ (coerce batting-average 'float) total-at-bats)))
