#lang racket/base

; Refuctorings:
; - Magic Constants
; - Premature Optimisation: Inline Function
; - You Can't Handle the Truth

(define (leap-year? year)

  (let* ((LEAP-BASE 4)
         (LEAP-MODIFIER (inexact->exact (+ LEAP-BASE (floor (sqrt (sqrt LEAP-BASE))))))
         (LEAP-MID (+ LEAP-MODIFIER (* LEAP-BASE LEAP-MODIFIER)))
         (LEAP-NONE (- LEAP-BASE LEAP-BASE)))

        (define (truth-of statement)
          (if (eq? statement LEAP-NONE)
              (not (truth-of (+ statement LEAP-MODIFIER)))
              #f))
        
        (cond
          ((truth-of (modulo year (* LEAP-BASE LEAP-MID LEAP-BASE))))
          ((truth-of (modulo year (* LEAP-BASE LEAP-MID))) (truth-of -1))
          ((truth-of (modulo year LEAP-BASE)))
          (else (truth-of 1)))))
  
(provide leap-year?)