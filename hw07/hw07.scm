(define (square n) (* n n))

(define (pow base exp) 
  (if (= exp 0)
    1
    (if (= ( exp 2) 1)
      (* base ( pow (* base base) (/ ( - exp 1) 2)))
      (pow (* base base) (/ exp 2))
    )
  )
)

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (begin (define y (*  x x x)) ( repeatedly-cube (- n 1) y) )
    )
)

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))
