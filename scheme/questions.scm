(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cadar x) (car (cdr (car x))))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 14
;; Returns a list of two-element lists
(define (enumerate s)

  ( define ( helper lst idx) 
    ( if (null? lst)
      nil
      (
        cons (list idx (car lst)) 
            (helper (cdr lst) (+ idx 1)) 
      )
    )
  )
  (helper s  0)
)


;; Problem 15

;; Return the value for a key in a dictionary list
(define (get dict key)
  ; BEGIN PROBLEM 1
  ( if (null? dict)
    #f
    ( 
      if ( eq? (car (car dict) ) key )
        ( cadr (car dict) )
        ( get (cdr dict) key)
    )
  )
  ; END PROBLEM 15
)

;; Return a dictionary list with a (key value) pair
(define (set dict key val)
  ; BEGIN PROBLEM 15
  ( if (null? dict)
    (list (list key val))
    ( 
      if ( eq? (car (car dict) ) key )
        ( cons (list key val) (cdr dict) )
        ( cons (car dict) ( set (cdr dict) key val ) )
    )
  )    
  ; END PROBLEM 15
)

;; Problem 16

;; implement solution-code
(define (solution-code problem solution)
  ; BEGIN PROBLEM 16
  ( if (null? problem)
      '()
      ( 
        if (list? (car problem))
          (cons (solution-code  (car problem) solution) (solution-code (cdr problem) solution ))
          (
            if (eq? (car problem) '_____)
               (cons solution (solution-code(cdr problem) solution) )
               (cons (car problem) (solution-code (cdr problem) solution) )
          )
      )
  )
)
