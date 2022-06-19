(define (sum_len L)
    (if (null? L)
        '(0 0)
        (let ((result (sum_len (cdr L))))
              (list (+ (car L) (car result)) (+ 1 (cadr result)))
              )
        )
    )
              

(define moy
  (lambda (L)
   (let ((result (sum_len L)))
              (/(car result) (cadr result))
              )))

(sum_len '(1 2 3 4))
(moy '(1 2 3 4 5))
