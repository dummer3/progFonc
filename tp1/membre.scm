(define membre
  (lambda (x L)
    (if(null? L)
       #f
       (if(= (car L) x)
          #t
          (membre x (cdr L))))))

(membre 3 '(4 5 4 5 10 33))
