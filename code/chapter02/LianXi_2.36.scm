(load "2.2.3_accumulate.scm")
(define (accumulate-n op init seqs)
        (if (null? (car seqs))
            (list)
            (cons (accumulate op init (map car seqs))
                  (accumulate-n op init (map cdr seqs)))))

; (define t (list (list 1 2 3)
;                 (list 4 5 6)
;                 (list 7 8 9)
;                 (list 10 11 12)))

; (display (accumulate-n + 0 t))