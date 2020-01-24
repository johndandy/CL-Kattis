;;;; Autori

(loop for i across (read-line)
  do (when (upper-case-p i)
           (princ i)))
