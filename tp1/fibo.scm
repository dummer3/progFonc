(define fibo_rec_term
  (lambda (x u1 u2)
    (if (<= x 1)
        u2
        (fibo_rec_term (- x 1) u2 (+ u1 u2))
        )
    )
)
    
    

(define fibo
  (lambda (x)
    (if (= x 0)
        0
        (fibo_rec_term (- x 1)  1 1))
    )
  )

(fibo 10)
