;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sq x) (* x x))
(define (SOS x y) (+ (sq x) (sq y)))
(define (LSOS x y z)
  (cond ( (and (> x y) (> y z)) (SOS x y) )
        ( (and (> x z) (> z y)) (SOS x z) )
        ( (and (> y x) (> x z)) (SOS y x) )
        ( (and (> y z) (> z x)) (SOS y z) )
        ( (and (> z x) (> x y)) (SOS z x) )
        ( (and (> z y) (> y x)) (SOS z y) )))

;testing the code below

(LSOS 1 2 3)

