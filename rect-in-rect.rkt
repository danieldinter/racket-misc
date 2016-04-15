;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rect-in-rect) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; point-in-rect?: number number number number number number -> boolean
;; finds out if a point (x,y) is in a rectangle with two points (x1,y1) and (x2,y2)
;; Example: (point-in-rect? 0.5 0.5 0 0 2 2) -> true
;; Definition:
(define (point-in-rect? x y x1 y1 x2 y2)
  (cond
    [(and (and (>= x (min x1 x2)) (<= x (max x1 x2)))
          (and (>= y (min y1 y2)) (<= y (max y1 y2)))) true]
    [else false]))

;; Test 1:
(check-expect(point-in-rect? 1 1 0 0 2 2) true)

;; Test 2:
(check-expect(point-in-rect? 1 2 0 0 3 2) true)

;; Test 3:
(check-expect(point-in-rect? 2 2 0 0 1 1) false)

;; Test 4:
(check-expect(point-in-rect? 2 4 0 0 3 3) false)




;; rect-in-rect?: number number number number number number number number -> boolean
;; finds out if a rectangle with two points (x3,y3) and (x4,y4) contains another rectangle with two points (x1,y1) and (x2,y2)
;; Example: (rect-in-rect? 3 3 9 9 1 1 10 10) -> true
;; Definition:
;; (define (rect-in-rect? x1 y1 x2 y2 x3 y3 x4 y4)
;;   (cond
;;     [(and (and (>= (min x1 x2) (min x3 x4)) (<= (max x1 x2) (max x3 x4)))
;;           (and (>= (min y1 y2) (min y3 y4)) (<= (max y1 y2) (max y3 y4)))) true]
;;     [else false]))
;; 
;; Definiton using point-in-rect?:
(define (rect-in-rect? x1 y1 x2 y2 x3 y3 x4 y4)
  (cond
    [(and (point-in-rect? x1 y1 x3 y3 x4 y4)
          (point-in-rect? x2 y2 x3 y3 x4 y4)) true]
    [else false]))

;; Test 1:
(check-expect (rect-in-rect? 3 3 9 9 1 1 10 10) true)

;; Test 2:
(check-expect (rect-in-rect? 0 0 9 9 1 1 10 10) false)

;; Test 3:
(check-expect (rect-in-rect? 3 3 11 11 1 1 10 10) false)

;; Test 3:
(check-expect (rect-in-rect? 1 1 10 10 1 1 10 10) true)