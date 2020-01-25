;;;; I've Been Everywhere, Man

(let ((cities ())
      (current-city nil))
  (dotimes (i (read))
    (dotimes (j (read))
      (setq current-city (read))
      (unless (member current-city cities)
              (setq cities (cons current-city cities))))
    (write (length cities))
    (terpri)
    (setq cities ())))
