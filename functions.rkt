;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname functions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(above (circle 40 "solid" "red")         
       (circle 40 "solid" "yellow")
       (circle 40 "solid" "green"))

;While the above work, there is a lot of redundancy, only the color changes
;smart to use a function here!
; we can once again use define
(define (bulb c)
  (circle 40 "solid" c))

;so 'c'  here is the variable, which we will use for color
;now we can call the function and say:
(above (bulb "red") (bulb "purple") (bulb "blue"))