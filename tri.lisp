;;;; Tri

(let ((operators (list '+ '- '* '/))
      (numbers (list (read) (read) (read))))
  (loop for i in operators
        for inputs = (list (first numbers) (second numbers))
        for output = (third numbers)
        do (when (eq (apply i inputs) output)
             (format t "~A~A~A=~A" (first inputs)
                                   i
                                   (second inputs)
                                   output)))
  (loop for i in operators
        for inputs = (list (second numbers) (third numbers))
        for output = (first numbers)
        do (when (eq (apply i inputs) output)
             (format t "~A=~A~A~A" output
                                   (first inputs)
                                   i
                                   (second inputs)))))
                                   
