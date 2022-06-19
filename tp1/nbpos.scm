(define nbpos
  (lambda (L)
    (if(null? L)
       0
       (if (>= (car L) 0)
          (+ 1 (nbpos (cdr L)))
          (nbpos (cdr L))))))

(nbpos '(-1 -2 5 10 -3 4))
