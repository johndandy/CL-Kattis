(let ((x (read)) 
      (y (read)))
  (if (> x 0)
      (if (> y 0)
          (write 1)
          (write 4))
      (if (> y 0)
          (write 2)
          (write 3))))
