(define PC
  (lambda (L n)
    (if (= n 1)
        (map (lambda (x) (list x)) L)
        (let ((result (PC L (- n 1))))
          (append-map (lambda (x) (map (lambda (y) (cons x y)) result)) L))
        )))

(define fct
  (lambda (d a)
    (lambda (x)
      (if (equal? x (car d))
          (car a)
          ((fct (cdr d) (cdr a)) x)))
    ))

((fct `(a b c) `(x y z)) `b)

(define LF
  (lambda (E F)
    (let ((prod_cart (PC F (length E))))
      (map (lambda (L)
             (fct E L))
             prod_cart))
    ))

(LF `(1 3) `(A C))

(define SR (lambda (L B C) 
   (if (null? L) 
       B 
      (C (car L) (SR (cdr L) B C)) ) ))

(define filtrer
  (lambda (E P)
    (SR E `() (lambda (x L) (if (P x) (cons x L) L)))))

(filtrer `(1 a 2 b) integer?)

(define qqs? (lambda (L P) 
               (if (null? L) 
                   #t 
                   (and (P (car L)) (qqs? (cdr L) P)) ) ))

(define stabilise
  (lambda (f P)
    (qqs? P (lambda (x) (member (f x) P)))
    ))

(stabilise (lambda (x) (if (= x 1)  2)) '(1))

(define LFS
  (lambda (E P)
          (let ((recur (LF E E)))
            (append-map (lambda (L)
                   (if (stabilise L P)
                       (list L)
                       `()))
                 recur))))

(LFS `(1 2) `(1)) 
