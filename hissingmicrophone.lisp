;;;; Hissing Microphone

(let ((last-character nil))
  (loop for current-character across (read-line)
    do (when (and (eq last-character current-character)
                  (eq current-character #\s))
             (write-line "hiss")
             (exit))
       (setq last-character current-character))
  (write-line "no hiss"))
