(define zip
  (lambda (L1 L2)
    (map
     (lambda (x y) (list x y))
     L1 L2)))

(zip '(1 2) '(3 4 5))
