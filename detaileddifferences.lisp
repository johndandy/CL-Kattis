;;;; Detailed Differences

(let ((first-string nil)
      (second-string nil))
  (dotimes (i (read))
    (setq first-string (read-line))
    (setq second-string (read-line))
    (write-line first-string)
    (write-line second-string)
    (loop for j across first-string
          for k across second-string
          do (if (eq j k)
                 (princ ".")
                 (princ "*")))
    (terpri)))
