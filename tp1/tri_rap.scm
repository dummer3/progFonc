(define is
  (lambda (L n)
    (if (null? L)
        '(()())
        (let ((result (is (cdr L) n)))
          (if (< (car L) n)
            (list (cons (car L) (car result)) (cadr result))
            (list (car result) (cons (car L) (cadr result)))
                    )
              )
          )
        )
    )

(define tri_rapide
    (lambda (L)
        (if (null? L)
            L
            (let ((result (is (cdr L) (car L))))
                (append (tri_rapide (car result)) (cons (car L) (tri_rapide (cadr result))))
        ))))
    
(tri_rapide '(10 3 14 52 37 -4 -6 8 9 31 2 20 -8))

