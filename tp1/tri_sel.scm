(define tri_sel
    (lambda (L)
        (if (null? (cdr L))
            L
            (let* ((result (sel L)))
                 (cons (car result) (tri_sel (cadr result)))
                 ))))
             
(define sel
    (lambda (L)
        (if (null? (cdr L))
            (list (car L) '())
        (let ((result (sel (cdr L))))
             (if (< (car L) (car result))
             (list (car L) (cons (car result) (cadr result)))
             (list (car result) (cons (car L) (cadr result)))
    )))))

(sel '(0 3 10 5 1 2 9))
(tri_sel '(1 10 20 15 10 5 9 3 1 12 13 0))
