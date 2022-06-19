(define som_int
  (lambda (n)
    (if (= 1 n)
        1
        (+ n (som_int(- n 1)))
        )
    )
  )

(som_int 5)
