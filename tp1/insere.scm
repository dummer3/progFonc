(define insere
  (lambda (n x L)
    (if (and (null? L) (> n 0))
        L
        (if (= n 0)
            (cons x L)
            (cons (car L) (insere (- n 1) x (cdr L)))))))

(insere 2 2 '(0 1 3 4))
(insere 10 999 '(0 1 2 3 4))
