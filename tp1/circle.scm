(define PI 3.1415)

(define circle_perim
  (lambda (r)
    (list (* 2 (* PI r)))
  )
)

(define circle_aire
  (lambda (r)
    (list (* r (* PI r)))
  )
)


(define circle
  (lambda (r)
    (append (circle_perim r) (circle_aire r))
    )
)

(circle 2)
