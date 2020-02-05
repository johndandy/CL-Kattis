;;;; Avion

(defun ciap (name)
  (let ((list-name (loop for i across name
                         collect i)))
    (loop for i from 0 to (- (length list-name) 3)
          if (and (eq (nth i list-name) #\F)
                  (eq (nth (1+ i) list-name) #\B)
                  (eq (nth (+ i 2) list-name) #\I))
             do (return-from ciap t))
    nil))

(let ((cia-blimps (loop for i from 1 to 5
                        if (ciap (read-line))
                           collect i)))
  (if cia-blimps
      (loop for i in cia-blimps
            do (write i) (write-char #\space))
      (write-line "HE GOT AWAY!")))
      
