(define universel
  (lambda (L P)
    (if (null? L)
        #t
        (and (P  (car L)) (universel (cdr L) P)))
    ))

(define existentiel
  (lambda (L P)
    (if (null? L)
        #f
        (or (P (car L))
            (existentiel (cdr L) P)
            ))))

(define tous-egaux
  (lambda (L)
    (if (null? (cdr L))
        #t
        (if (= (car L) (cadr L))
        (tous-egaux (cdr L))
        #f))))


(let* ((l '(1 2 1 1)) (i '(1 1 1 1)))
  (not (existentiel l (lambda (v) (not(= v (car l))))))
  (not (existentiel i  (lambda (v) (not(= v (car i))))))
  (universel l  (lambda (v) (= v (car l))))
  (universel i  (lambda (v) (= v (car i)))))
