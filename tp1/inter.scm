(define membre
  (lambda (x L)
    (if(null? L)
       #f
       (if(= (car L) x)
          #t
          (membre x (cdr L))))))

(define inter
  (lambda (L1 L2)
    (if (null? L1)
        '()
        (if (membre (car L1) L2)
            (cons (car L1) (inter (cdr L1) L2))
            (inter (cdr L1) L2)))))

(inter '( 1 2 3 4 5 6 2) '(0 2 4 6))
