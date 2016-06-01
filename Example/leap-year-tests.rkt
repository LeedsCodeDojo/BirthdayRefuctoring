#lang racket/base

(require
  rackunit
  "leap-year-original.rkt"
  ;"leap-year-refuctored-1.rkt"
  ;"leap-year-refuctored-2.rkt"
 )

;  if ((year modulo 4 is 0) and (year modulo 100 is not 0))
;    or (year modulo 400 is 0)
;        then true
;    else false


(check-equal? (leap-year? 3) #f "year not divisible by 4 is not leap year")
(check-equal? (leap-year? 5) #f "year not divisible by 4 is not leap year")
(check-equal? (leap-year? 4) #t "year divisible by 4 but not 100 is leap year")
(check-equal? (leap-year? 104) #t "year divisible by 4 but not 100 is leap year")
(check-equal? (leap-year? 100) #f "year divisible by 4 and 100 is not leap year")
(check-equal? (leap-year? 500) #f "year divisible by 4 and 100 is not leap year")
(check-equal? (leap-year? 400) #t "year divisible by 400 is leap year")
(check-equal? (leap-year? 3200) #t "year divisible by 400 is leap year")

"**********************"
"*** Tests Complete ***"
"**********************"