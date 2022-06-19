(define tri_bul
    (lambda (L)
        (if (null? (cdr L))
            L
            (let ((result (bul L)))
                 (cons (car result) (tri_bul (cdr result))))
                   )))
               
(define bul
    (lambda (L)
        (if (null? (cdr L))
            L
            (let ((result (bul (cdr L))))
                (if (> (car L) (car result))
                    (cons (car result) (cons (car L) (cdr result)))
                    (cons (car L) result)))
        )))
    
(bul '(1 10 5 20 3 2 19 0))
(tri_bul '(3 20 1 0 19 18 4 7 30 9 11))
