;;;; No Duplicates

(defun split-string (string-to-split)
  (let ((start -1)
        (string-length (1- (length string-to-split))))
    (loop for i across string-to-split
          for j from 0 to string-length
          when (eq i #\space)
               collect (read-from-string (subseq string-to-split (1+ start) (setq start j)))
          when (eq j string-length)
               collect (read-from-string (subseq string-to-split (1+ start))))))

(loop for word in (split-string (read-line))
      if (member word phrase)
         return (write 'no)
         collect word into phrase
      finally (write 'yes))

