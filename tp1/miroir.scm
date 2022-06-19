(define miroir
  (lambda (l)
    (if (null? (cdr L))
        L
        (append (miroir (cdr L)) (list(car L))))
        )
    )

(miroir '(1 2 3 4 5))
