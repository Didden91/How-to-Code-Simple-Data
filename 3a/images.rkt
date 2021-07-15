;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname images) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;This I think is somewhat similar to Python's import
;Regardless, now we can use Image primitives!

(circle 10 "solid" "blue")
(rectangle 30 60 "outline" "red")
(text "heythere" 24 "orange")

;Those are some basic shapes
;now what can we DO with these images once we have them made:
;you can apply other primitives to shapes

(above (circle 10 "solid" "red")
       (circle 20 "solid" "green")
       (circle 30 "solid" "yellow"))
;so 'above' can "append" images by stacking them. There are many functions like this. Another is beside:

(beside (circle 10 "solid" "red")
       (circle 20 "solid" "green")
       (circle 30 "solid" "yellow"))

(overlay (circle 10 "solid" "red")
       (circle 20 "solid" "green")
       (circle 30 "solid" "yellow"))
