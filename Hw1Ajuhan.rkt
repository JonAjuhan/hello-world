;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Hw1Ajuhan) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "arrow-gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "arrow-gui.rkt" "teachpack" "htdp")) #f)))
;; Jonathan Ajuhan       9-5-17

;; 1)
;; signature: distance-origin: number->number
;; purpose: To copute the distance of the Cartesian Point from the origin

;; tests:
(check-expect (distance-origin -5 12)13) ;;1c
(check-expect (distance-origin 7 0)7)
(check-expect (distance-origin -6 -8)10)

;; function definition: distance-origin
;;1a)
(define x 8)
(define y 36)
(define (distance-origin x y)
  (sqrt(+(* x x)(* y y)))) ;;1b

;; 2)
;; signature: string-join: string->string
;; purpose: To concatenate 2 strings and add an underscore (_) between them

;;tests:
(check-expect (string-join "Jonathan" "Ajuhan")"Jonathan_Ajuhan") ;;(2c)
(check-expect (string-join prefix suffix)"hello_world")
(check-expect (string-join "Destiny" "2")"Destiny_2")
;;function definiton: string-join (2b)
;;2a)
(define prefix "hello")
(define suffix "world")
(define (string-join word1 word2)
  (string-append word1 "_" word2))

;; 3)
;; signature: string-insert: string number->string
;; purpose: To place and underscore (_) in ith postion of a string

;; tests:
;; 3b
(check-expect (string-insert str i)"hello_world")
(check-expect (string-insert "WorldLine" 0)"_WorldLine")
(check-expect (string-insert "ideas" 5)"ideas_")
(check-expect (string-insert "act" 1)"a_ct")
(check-expect (string-insert "" 0)"_")

;; function definition: string-insert
;; 3a
(define str "helloworld")
(define i 5)
(define (string-insert str i)
  (string-append (substring str 0 i)"_"(substring str i (string-length str)))) ;;3b
 
;; 4)
;; signature: string-delete: string number->string
;; purpose: To place and underscore (_) in ith postion of a string

;; tests:
;; 4b
(check-expect (string-delete str i)"hellworld")
(check-expect (string-delete "WorldLine" 4)"WordLine")
(check-expect (string-delete "a" 1) "")
(check-expect (string-delete "ab" 1) "b")
(check-error (string-delete "" 0) )


;; function definition: string-delete (4b)
(define str1 "helloworld")
(define ii 5)
(define (string-delete str1 ii)
  (string-append (substring str1 0(- ii 1))(substring str1 ii (string-length str1)))) ;;4a

;; 5)
;; signature: string-remove-last: string-> string
;; purpose: Produces a string with its last character removed

;; tests:
(check-expect (string-remove-last "HyperSpace")"HyperSpac")
(check-expect (string-remove-last "BlackHole")"BlackHol")

;; function definiton: string-remove-last
(define (string-remove-last wrd)
  (substring wrd 0 (-(string-length wrd) 1)))

;; 6)

;; signature: string-rest: string->string
;; purpose: Produce a string with its first character removed

;; tests:
(check-expect (string-rest "talltale")"alltale")
(check-expect (string-rest "Jonathan")"onathan")
(check-error (string-rest ""))

;;function definition: string-rest
(define (string-rest wrd2)
  (substring wrd2 1 (string-length wrd2)))

