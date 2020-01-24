;;;; Piece of Cake!

(let ((cake-size (read))
      (cut-from-top (read))
      (cut-from-left (read)))
  (when (> (/ cake-size 2) cut-from-top)
        (setq cut-from-top (- cake-size cut-from-top)))
  (when (> (/ cake-size 2) cut-from-left)
        (setq cut-from-left (- cake-size cut-from-left)))
  (write (* 4 cut-from-top cut-from-left)))
