(define carre
  (lambda (l)
    (if (null? (cdr l))
    (list (* (car l) (car l)))
    (cons (* (car l) (car l)) (carre (cdr l)))
    )
   )
)

(carre '(1 2 3 4 5))
