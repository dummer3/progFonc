(define membre
  (lambda (x L)
    (if(null? L)
       #f
       (if(= (car L) x)
          #t
          (membre x (cdr L))))))


(define epure
  (lambda (L)
    (if (null? L)
        '()
        (if (membre (car L) (cdr L))
            (epure (cdr L))
            (cons (car L) (epure(cdr L)))))))

(define union
  (lambda (L1 L2)
    (epure (append L1 L2))))

(union '(1 2 3) '(3 4 5 6))

