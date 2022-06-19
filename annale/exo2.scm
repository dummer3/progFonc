(define evPol (lambda (P x)
                (if (null? (cdr P))
                    (car P)
                    (+ (* x (evPol (cdr P) x)) (car p))
                 )
                ))

(evPol '(0 0 -1 2 3) 4)

(define fp (lambda (P)
            (lambda (x) (evPol P x))))

((fp '(0 0 -1 2 3)) 4)

(define somPol
  (lambda (P1 P2)
    (map + P1 P2)))

(somPol `(0 1 2 3 4) `(4 3 2 1 0))

(define multxPol
  (lambda (P)
    (append `(0) P)))

(multxPol `(1 2 3))

(define miroir
  (lambda (l)
    (if (null? (cdr L))
        L
        (append (miroir (cdr L)) (list(car L))))
        )
    )

(define prefixe
  (lambda (L)
    (if (null? L)
        L
        (cons (list (car L)) (map (lambda (x) (cons (car L) x)) (prefixe (cdr
                                                                            L)))))))

(prefixe '(A B C))
      
(define plsc
  (lambda (L)
    ))
