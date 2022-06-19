(define prod
  (lambda (L1 L2)
    (append-map
     (lambda (x)
       (map
        (lambda (y)
        (list x y)) L2)) L1)))

(prod '(1 2) '(3 4 5))
