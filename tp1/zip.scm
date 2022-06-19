(define zip
  (lambda (L1 L2)
    (if (or (null? L1) (null? L2))
        '()
        (cons (list (car L1) (car L2)) (zip (cdr L1) (cdr L2))))))

(zip '(1 2 3) '(4 5 6 7))
