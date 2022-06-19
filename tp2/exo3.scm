(define universelle
  (lambda (L P)
    (if (null? L) #t
        (and (P (car L))
             (universelle (cdr L) P))
        )))

(define reflexive
  (lambda (R E)
    (if (null?  E)
               #t
    (and (R (car E) (car E)) (reflexive R (cdr E))))  
    ))

(define reflexive
  (lambda (R E)
    (universelle E (lambda (x) (R x x)))                                                           
    ))

(define implique
  (lambda (X Y)
    (or (not X) Y))) 

(define symetrie
  (lambda (R E)
    (universelle E (lambda (x)
                    (universelle E (lambda (y)
                                     (implique (R x y) (R y x))))))))
(define transitive
  (lambda (R E)
    (universelle E (lambda(x)
                     (universelle E (lambda (y)
                                      (universelle E (lambda (z)
                                                     (implique (and (R x z) (R z y)) (R x z))))))))))

(define f
  (lambda (x Q R)
    (if (null? Q)
        (list (list x))
        (if (R (caar Q) x)
            (cons (cons x (car Q)) (cdr Q))
            (cons (car Q) (f x (cdr Q) R)))
            )
        ))

(define quotient
  (lambda (R E)
    (if (null? (cdr E))
        (list E)
     (let ((ar (quotient R (cdr E))))
        (f (car E) ar R)
    ))))

(let ((E `(1 2 3))
      (R (lambda (x y) (= x y))))
      (transitive R E))

(let ((E '(0 1 2 3 4 5 6))(R (lambda (x y) (= (modulo (- x y) 3) 0))))
      (quotient R E))

