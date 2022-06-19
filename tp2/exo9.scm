(define departPartition2
  (lambda (E)
    (list (list (list (car E)) (list(cadr E))))))

(define partition2
  (lambda (E)
    (if (null? (cddr E))
        (departPartition2 E)
        (let ((recur (partition2 (cdr E))))
          (list (list (list (car E)) (append (caar recur) (cadar recur)))
                         (append-map (lambda (LL)
                                       (append
                                        (list (cons (car E) (car LL)) (cadr LL))
                                        (list (car LL) (cons (car E) (cadr LL))))) recur))))
    ))


(define partition2
  (lambda (E)
    (if (null? (cddr E))
        (departPartition2 E)
        (let ((recur (partition2 (cdr E))))
          (append (list  (list (list (car E)) (cdr E)))
                         (map (lambda (LL)
                                (list (cons (car E) (car LL)) (cadr LL))) recur)
                         (map (lambda (LL)  
                                (list (car LL) (cons (car E) (cadr LL)))) recur))))
    ))


(partition2 `(1 2 3 4))
