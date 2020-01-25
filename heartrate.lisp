;;;; Heart Rate

(let ((b nil)
      (p nil))
  (dotimes (i (read))
    (setq b (read))
    (setq p (read))
    (format t "~A ~A ~A~%" (* 60 (/ (- b 1) p)) (* 60 (/ b p)) (* 60 (/ (+ b 1) p)))))
