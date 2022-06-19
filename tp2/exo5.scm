(define removeL
  (lambda (L r)
      (if (null? L)
        '()
        (if (equal? (car L) r)
            (removeL (cdr L) r)
            (cons (car L) (removeL (cdr L) r)))
        )))
(define remove
  (lambda (G r)
    (if (null? G)
        '()
        (if (equal? (caar G) r)
            (remove (cdr G) r)
            (cons (list (caar G)(removeL (cadar G) r)) (remove (cdr G) r)))
        )))

(define sucesseur
  (lambda (G f)
    (if (equal? (caar G) f)
        (cadar G)
        (sucesseur (cdr G) f))
    ))

(define chemin
  (lambda (dep but G)
    (if (equal? dep but)
        (list (list dep))
        (append-map (lambda (x)
                      (map (lambda (y)
                             (cons dep y)) (chemin x but (remove G dep)))) (sucesseur G dep))
      )))

(let ((G '((D (A C)) (A (D C B)) (C (B)) (B ()))))
  (chemin `A `B G))

