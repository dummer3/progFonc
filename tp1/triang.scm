(define miroir
  (lambda (L)
    (if (null? (cdr L))
        L
        (append (miroir (cdr L)) (list(car L))))
        )
    )

(define triang
  (lambda (n)
    (letrec ((L (build n)) (build (lambda (x) (if (= x 0) '() (cons x (build (- x 1)))))))
      (append (miroir L) (cdr L))
      )))

(triang 5)
