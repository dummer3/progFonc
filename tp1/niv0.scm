(define niv0
  (lambda (L)
    (if(null? L)
       '()
       (if (list? (car L))
           (append (niv0(car L)) (niv0 (cdr L)))
           (cons (car L) (niv0 (cdr L))))

       )))
(niv0 '(0 (((1) 2) 3) (4 5) 6))
