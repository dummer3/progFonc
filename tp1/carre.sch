(define carre
    (lambda (L)
        (if (null? L)
        '()
        (cons (* (car L) (car L)) (carre (cdr L))))))
    
(carre '(1 2 3 4 5)
