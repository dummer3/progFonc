(define compose (lambda (f g)
                  (lambda (x)
                          (f (g x)))))

((compose (lambda (l) (* l l)) (lambda (x) (+ x x))) 3)

(define miroir
  (lambda (l)
    (if (null? (cdr L))
        L
        (append (miroir (cdr L)) (list(car L))))
        )
    )


(define trace (lambda (f n)
                (if (= n 0)
                    (list (lambda (x) x))
                    (let ((listf (trace f (- n 1))))
                      (cons (compose f (car listf)) listf)))
                ))

(define applique
  (lambda (Lf x)
    (if (null? Lf)
        `()
        (cons ((car Lf) x) (applique (cdr Lf) x))))
  )

(miroir (applique (trace (lambda (x) (+ x 2)) 10) 1))
