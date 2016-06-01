#lang racket/base

; Refuctorings used:
;
; - Deep Nesting FTW
; - Inline Function


(define (leap-year? year)

  (if (eq? (modulo year 400) 0)
      #t
      (if (eq? (modulo year 100) 0)
          #f
          (if (eq? (modulo year 4) 0)
              #t
              #f))))
  
(provide leap-year?)