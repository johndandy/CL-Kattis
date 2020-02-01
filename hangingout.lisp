;;;; Hanging Out on the Terrace

(let ((limit (read)))
  (loop repeat (read)
        for action = (read)
        for people = (read)
        if (eq action 'enter)
           if (<= (+ people on-terrace) limit)
              sum people into on-terrace
           else
              sum 1 into denied
        else
           sum (- people) into on-terrace
        finally (write denied)))

