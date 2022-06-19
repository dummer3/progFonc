(define tri_ins 
    (lambda (L)
        (if (null? (cdr L))
            L
            (let ((result (tri_ins (cdr L))))
            (ins (car L) result)) 
        )
    )
)

(define ins
    (lambda (x L)
        (if (null? L)
            (list x)
            (if (> x (car L))
                (cons (car L) (ins x (cdr L)))
                (cons x L)
              ))))
(ins 4 '(1 3))
(tri_ins '(1 4 10 7 3 11 2 9 9 7 8 1 3 100 0))
