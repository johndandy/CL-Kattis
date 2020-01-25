;;;; Dice Cup

(let* ((first-die (read))
      (second-die (read))
      (number-sums (1+ (abs (- first-die second-die)))))
  (dotimes (i number-sums)
    (write (+ i (- (ceiling (+ first-die second-die) 2)
                   (1- (floor number-sums 2)))))
    (terpri)))
