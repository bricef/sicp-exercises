#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 2.21")

;   Exercise 2.21
;   =============
;   
;   The procedure square-list takes a list of numbers as argument and
;   returns a list of the squares of those numbers.
;   
;   (square-list (list 1 2 3 4))
;   (1 4 9 16)
;   
;   Here are two different definitions of square-list.  Complete both of
;   them by filling in the missing expressions:
;   
;   (define (square-list items)
;     (if (null? items)
;         nil
;         (cons <??> <??>)))
;   (define (square-list items)
;     (map <??> <??>))
;   
;   ------------------------------------------------------------------------
;   [Exercise 2.21]: http://sicp-book.com/book-Z-H-15.html#%_thm_2.21
;   2.2.1 Representing Sequences - p106
;   ------------------------------------------------------------------------