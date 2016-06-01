#lang racket/base

(define (leap-year? year)

  (define (year-divisible-by? dividend) 
    (eq? (modulo year dividend) 0))
  
  (cond
    ((year-divisible-by? 400) #t)
    ((year-divisible-by? 100) #f)
    ((year-divisible-by? 4) #t)
    (else #f)))
  
(provide leap-year?)