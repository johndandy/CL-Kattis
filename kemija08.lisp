;;;; Kemija

(defun vowelp (char)
  (or (eq char #\a)
      (eq char #\e)
      (eq char #\i)
      (eq char #\o)
      (eq char #\u)))

(let ((message (loop for i across (read-line) collect i)))
  (loop for i from 0 to (1- (length message))
        for j = (nth i message)
        collect j into new-message
        do (when (vowelp j) (incf i 2))
        finally (write-line (coerce new-message '(string)))))
