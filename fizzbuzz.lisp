;;;; FizzBuzz

(let ((x (read))
      (y (read)))
  (dotimes (n (read))
    (if (= (mod (+ n 1) x) 0)
        (if (= (mod (+ n 1) y) 0)
            (write-line "fizzbuzz")
            (write-line "fizz"))
        (if (= (mod (+ n 1) y) 0)
            (write-line "buzz")
            (progn (write (+ n 1)) (terpri))))))
