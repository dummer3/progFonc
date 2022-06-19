(define prod_cart
  (lambda (L n)
    (if (= n 1)
        (map (lambda (x) (list x)) L)
        (let ((result (prod_cart L (- n 1))))
          (append-map (lambda (x) (map (lambda (y) (cons x y)) result)) L))
        )))

(prod_cart '(0 1) 3)
