(define (judge s num)
    (  if (null? s)
        #t
        (   if ( <= num (car s) )
                (judge (cdr s) (car s) )
                #f
        )
    )
)

(define (ascending? s) 
    ( if (null? s)
        #t
        (judge s (car s))
    )
)

(define (my-filter pred s) 
    (   if (null? s)
            '()
            (   
                if (pred (car s))
                    (cons (car s) (my-filter pred (cdr s)) )
                    (my-filter pred (cdr s))
            )
    )
)

(define (interleave lst1 lst2) 
    (   
        if ( null? lst1 )
            (   if (null? lst2)
                    '()
                    (cons (car lst2) ( interleave lst1 (cdr lst2)) )
                
            )
        
            (   if ( null? lst2 ) 
                (cons (car lst1) ( interleave (cdr lst1) lst2) )
                (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2))))
            )
    )
)


(define (no-repeats s) 
        ( 
            if (null? s)
            '()
            (   cons
                (car s) 
                (no-repeats (filter ( lambda (x) (not (= x (car s))) ) (cdr s)) 
                )
            )
        )
)
