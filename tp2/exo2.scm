(define n_terme
  (lambda (n fonc u0)
    (if (= n 0)
        u0
        (fonc n (n_terme (- n 1) fonc u0)))))

(define n_terme_double
  (lambda (n fonc b0 b1)
    (cond ((= n 0) b0)
          ((= n 1) b1)
          (else (fonc n (n_terme_double (- n 1) fonc b0 b1) (n_terme_double
                                                                (- n 2) fonc b0 b1))))
    ))


(n_terme 10 (lambda (x n) (+ x n)) 0)
(n_terme 4 (lambda (x n) (* x n)) 1)
(cadr (n_terme 10 (lambda (n L) (list (+ (car L) (cadr L)) (car L))) `(1 0))) 
(n_terme_double 10 (lambda (n b0 b1) (+ b0 b1)) 0 1)
