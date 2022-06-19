(define without
  (lambda (E x)
    (if (= x (car E))
        (cdr E)
        (cons (car E) (without (cdr E) x)))
    ))

(define P (lambda (E)
            (if (null? E)
                (list E)
                (let ((recur (P (cdr E))))
                  (append recur (map (lambda (L) (cons (car E) L)) recur)))
                )
                
            ))

(P `(1 2 3))
