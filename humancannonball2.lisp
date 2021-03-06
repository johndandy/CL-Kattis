;;;; The Amazing Human Cannonball

(let ((test-cases (read))
      (theta 0)
      (initial-velocity 0)
      (time-elapsed 0)
      (height 0)
      (h1 0)
      (h2 0))
  (dotimes (i test-cases)
    (setq initial-velocity (read))
    (setq theta (/ (* (read) pi) 180))
    (setq time-elapsed (/ (read) initial-velocity (cos theta)))
    (setq height (- (* initial-velocity time-elapsed (sin theta))
                    (* 9.81 time-elapsed time-elapsed 0.5)))
    (setq h1 (read))
    (setq h2 (read))
    (if (or (< height (1+ h1))
            (> height (1- h2)))
        (write-line "Not Safe")
        (write-line "Safe"))))
