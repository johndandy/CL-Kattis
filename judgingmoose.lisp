;;;; Judging Moose

(let ((moose (list (read) (read))))
  (cond ((and (zerop (first moose)) (zerop (second moose)))
         (write-line "Not a moose"))
        ((eq (first moose) (second moose))
         (format t "Even ~A" (* 2 (apply 'max moose))))
        ((not (eq (first moose) (second moose)))
         (format t "Odd ~A" (* 2 (apply 'max moose))))))
