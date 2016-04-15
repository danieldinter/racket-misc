;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname point-in-rect) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; point-in-rect?: number number number number number number -> boolean
;; finds out if a point (x,y) is in a rectangle with two points (x1,y1) and (x2,y2)
;; Example: (point-in-rect? 0.5 0.5 0 0 2 2) -> true
;; Definition:
(define (point-in-rect? x y x1 y1 x2 y2)
  (cond
    [(and (and (>= x (min x1 x2)) (<= x (max x1 x2)))
          (and (>= y (min y1 y2)) (<= y (max y1 y2)))) true]
    [else false]))

;; Definition with if-expression:
;; (define (point-in-rect? x y x1 y1 x2 y2)
;;  (if
;;    (and (and (>= x (min x1 x2)) (<= x (max x1 x2)))
;;         (and (>= y (min y1 y2)) (<= y (max y1 y2)))) true false))

;; Test 1:
(check-expect(point-in-rect? 1 1 0 0 2 2) true)

;; Test 2:
(check-expect(point-in-rect? 1 2 0 0 3 2) true)

;; Test 3:
(check-expect(point-in-rect? 2 2 0 0 1 1) false)

;; Test 4:
(check-expect(point-in-rect? 2 4 0 0 3 3) false)
  