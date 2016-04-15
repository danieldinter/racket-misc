;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rect-area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; rect-area: number number number number -> number
;; calculates the area of a rectangle with the two points (x1,y1) (x2,y2)
;; Example: (rect-area -1 4 2 0) = 12
;; Definition:
(define (rect-area x1 y1 x2 y2)
  (* (- (max x1 x2) (min x1 x2))
     (- (max y1 y2) (min y1 y2))))

;; Test 1:
(check-expect(rect-area 1 2 3 4) 4)

;; Test 2:
(check-expect(rect-area -1 -3 4 7) 50)