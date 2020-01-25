;;;; IsItHalloween.com

(let ((month (read))
      (day (read)))
  (if (or (and (eq month 'OCT) (eq day 31))
          (and (eq month 'DEC) (eq day 25)))
      (write 'yep)
      (write 'nope)))
