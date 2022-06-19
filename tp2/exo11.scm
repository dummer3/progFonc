(define zero
  (lambda (f)
    (lambda (x) x))
    )

(define un
  (lambda (f)
    f))

(define deux
  (lambda (f)
    (lambda (x)
      (f (f x)))
    ))

(define trois
  (lambda (f)
    (lambda (x)
      (f ((deux f) x)))
    ))

(define succ
  (lambda (rn)
    (lambda (f)
      (lambda (x)
        (f ((rn f) x))))
    ))

(define nom
  (lambda (rn listenoms)
    (lambda (f)
      (lambda (x)
        (if (equal? (car listenoms) ((rn f) x))
            (cadr listenoms)
            (((nom rn (cdr listenoms)) f) x))))))

(define entier
  (lambda (name listenoms)
    (lambda (f)
      (if (equal? (car listenoms) name)
          (zero f)
          (if (null? (cdr listenoms)) 
              #f
              (let ((result (entier name (cdr listenoms))))
                (if result
                    ((succ result) f)
                    #f)
                )))
          )))

(define plus
  (lambda (rn rm)
    (lambda (f)
      (lambda (x)
        (+ ((rn f) x) ((rm f) x))
        ))))

((zero (lambda (x) (+ x  5))) 4)
((un (lambda (x) (+ x 5))) 4)
((deux (lambda (x) (+ x 5))) 4)
((trois (lambda (x) (+ x 5))) 4)
(((succ trois)  (lambda (x) (+ x 5))) 4)
(((nom trois `(4 9 14 19 24 29)) (lambda (x) (+ x 5))) 4)
(((entier 19 `(4 9 14 19 24 29)) (lambda (x) (+ x 5))) 4)
(((plus trois un) (lambda (x) (+ x 5))) 4)


(define A
  (lambda (rn rm)
    (lambda (f)
      (lambda (x) (((rn rm) f) x)))))

(((A deux trois)
  (lambda (x) (+ 5 x))) 0)
  
;; On va appliquer le resultat de rm et ceux a la puissance rn
