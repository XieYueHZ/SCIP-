(define (get-record file employee-id)
        ((get 'get-record-by-id (tag file)) file employee-id)

(define (get-salary file employee-id)
        ((get 'get-salary-by-id (tag file)) file employee-id))

(define (find-employee-record employee-name group-set)
        (define (get-record file employee-name)
                (get 'get-record-by-name (tag file)) file employee-name)
        (if (null? group-set)
            `()
            (let ((record (get-record (car group-set) employee-name)))
                 (if (null? record)
                     (find-employee-record employee-name (cdr group-set))
                     record))))