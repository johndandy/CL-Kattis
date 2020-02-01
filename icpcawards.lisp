;;;; ICPC Awards

(defun split-string (string-to-split)
  (let ((start -1)
        (string-length (1- (length string-to-split))))
    (loop for i across string-to-split
          for j from 0 to string-length
          when (eq i #\space)
               collect (subseq string-to-split (1+ start) (setq start j))
          when (eq j string-length)
               collect (subseq string-to-split (1+ start)))))

(loop repeat (read)
      for (school team) = (split-string (read-line))
      until (eq number-awarded 12)
      unless (member (read-from-string school) schools-awarded)
        do (format t "~A ~A~%" school team)
        and collect (read-from-string school) into schools-awarded
        and sum 1 into number-awarded)
