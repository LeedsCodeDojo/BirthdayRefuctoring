#lang racket/base

; Refuctorings used:
;
; - Deep Nesting FTW

(define (leap-year? year)

  (define (year-divisible-by? dividend) 
    (eq? (modulo year dividend) 0))
  
  (if (year-divisible-by? 400)
      #t
     (if (year-divisible-by? 100)
         #f
         (if (year-divisible-by? 4)
         #t
         #f))))
  
(provide leap-year?)