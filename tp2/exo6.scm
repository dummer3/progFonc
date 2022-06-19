(define col_inf
  (lambda (L)
    (cdr L)))

(define  trace
     (lambda (M)
       (if (null? M)
           0
           (+ (caar M) (trace (map col_inf (cdr M)))))
       ))

(trace `((1 2 3) (3 4 5) (5 6 7)))

(define transposee
  (lambda (M)
    (apply map list M)))

(transposee `((1 2 3) (3 4 5) (5 6 7)))

(define  MV
  (lambda (M V)
    (map (lambda (L)
           (apply + (map * L V))) M)))

(MV `((1 2) (3 4)) `(2 3))

(define AL
  (lambda (X)
    (lambda (V)
      (MV X V))
      ))

((AL `((1 2) (3 4))) `(1 -1))
