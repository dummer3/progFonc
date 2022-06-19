(define som_list
  (lambda (L)
    
         (apply + (filter number? L))))

(som_list '(1 2 b c 3 4 5 a))
(som_list '(a b v c d g l))
