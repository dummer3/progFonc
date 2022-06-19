(define ies
  (lambda (L n)
    (if (null? L)
        '(()()())
        (let ((result (ies (cdr L) n)))
          (if (< (car L) n)
              (list (cons (car L) (car result)) (cadr result) (caddr result))
              (if (> (car L) n)
                  (list (car result) (cadr result) (cons (car L) (caddr result)))
                    (list (car result) (cons (car L) (cadr result)) (caddr result))
                    )
              )
          )
        )
    )
  )

(ies '(1 2 3 4 5 6 7 6 5 4 3 2 1) 5)
                  
