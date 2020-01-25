;;;; Filip

(defun reverse-digits (n)
  (let* ((split (multiple-value-list (floor n 10)))
        (digits (cons (second split) (multiple-value-list (floor (first split) 10)))))
    (+ (* 100 (first digits)) (* 10 (third digits)) (second digits))))

(let ((first-number (reverse-digits (read)))
      (second-number (reverse-digits (read))))
  (if (> first-number second-number)
      (write first-number)
      (write second-number)))
  
