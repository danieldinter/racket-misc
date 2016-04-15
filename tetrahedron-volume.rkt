;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname tetrahedron-volume) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Contract: pow3: number -> number
;; Purpose: calculate x^3
;; Example: (pow3 4) = 64
;; Definition:
(define (pow3 x)
  (* x x x))

;; Contract: k: number
;; Purpose: constant
;; Definition:
(define k (/ (sqrt 2) 12))

;; Contract: tetrahedorn-volume: number -> number
;; Purpose: calculate the volume of a tetrahedorn with a side length of "a"
;; Example: (tetrahedorn-volume 3) = 3.18
;; Definition:
(define (tetrahedorn-volume a)
  (* k (pow3 a)))


;; Test1
(check-within (tetrahedorn-volume 3) 3.18 0.01)

;; Test2
(check-within (tetrahedorn-volume 1.3) 0.259 0.01)

;; Test3
(check-within (tetrahedorn-volume 12) 203.647 0.01)


