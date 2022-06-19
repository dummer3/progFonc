(define long
  (lambda (L)
    (if (null? L)
    0
    (+ 1 (long (cdr L)))
    )
  )
)

(long '(1 2 3 4 5 6 7 8 9))
