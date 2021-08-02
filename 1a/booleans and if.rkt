;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |booleans and if|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(= 3 4)

(define WIDTH 100)
(define HEIGHT 100)

(> WIDTH HEIGHT)
(>= WIDTH HEIGHT)

;Primitives that produce a boolean value are often called PREDICATES
; can also use string for example:

(string=? "dit" "dat")
(string=? "dit" "dit")

;can also compare images. First let's define some images
(define image1 (rectangle 10 20 "solid" "red"))
(define image2 (rectangle 20 10 "solid" "blue"))

;we can use built in functions like image-width to compare images

(< (image-width image1)
   (image-width image2))

(< (image-height image1)
   (image-height image2))

; to form an if expression
;(if <expression> [this is the question]
;    <expression> [if true do this]
;    <expression> [if false fo this]

(if (< (image-width image2)
    (image-height image2))
    "It's true, the image is tall"
    "It's false, the image is wide")

;you can use AND to compare multiple expressions that would all produce boolean values to check if they are all true for example

(and (> (image-height image1) (image-height image2))
     (< (image-width image1) (image-width image2)))

;if ALL expressions are then true, the and produces true
;if and comes a expression that's false it stops, and returns false.
;It does not keep evaluating because it does not need to, this is called short circuiting
;similarly there is a primitive OR expression and a primitive NOT expression
