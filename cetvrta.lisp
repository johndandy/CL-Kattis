;;;; Cetvrta

(let ((x ())
      (y ()))
  (dotimes (i 3)
    (setq x (cons (read) x))
    (setq y (cons (read) y)))
  (dolist (i x)
    (when (eq (count i x) 1)
          (write i)
          (princ " ")))
  (dolist (i y)
    (when (eq (count i y) 1)
          (write i))))
