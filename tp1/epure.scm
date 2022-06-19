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

(display (epure '(4 5 5 2 4 5 2 6 2 2)))
