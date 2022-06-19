(define nieme
  (lambda (x L)
    (if (= x 0)
       (car L)
       (nieme(- x 1) (cdr L)))))

(nieme 5 '(0 1 2 3 4 5))
