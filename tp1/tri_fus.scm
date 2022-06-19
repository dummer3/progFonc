(define tri_fus
    (lambda (L)
        (if (null? (cdr L))
            L
            (let ((result (divide L '() '())))
        (merge (tri_fus (car result)) (tri_fus (cadr result))))
        )))
    
(define merge
    (lambda (U V)
        (if (null? U)
            V
            (if (null? V)
                U
                (if (< (car U) (car V))
                    (cons (car U) (merge (cdr U) V))
                    (cons (car V) (merge U (cdr V)))
                    )
                ))))
(define divide
    (lambda (L U V)
        (if (null? L)
        (list U V)
        (divide (cdr L) (cons (car L) V) U)
    )))

(merge '(1 3 4 5 7 9) '(0 2 4 6 7 8 10))
(divide '(1 2 3 4 5 6 7 8 9) '() '())
(tri_fus '(1 3 7 13 5 0 9 25 18 6 2))
