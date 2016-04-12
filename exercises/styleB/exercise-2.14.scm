#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 2.14")

;   Exercise 2.14
;   =============
;   
;   Demonstrate that Lem is right. Investigate the behavior of the system on
;   a variety of arithmetic expressions. Make some intervals A and B, and
;   use them in computing the expressions A/A and A/B.  You will get the
;   most insight by using intervals whose width is a small percentage of the
;   center value. Examine the results of the computation in center-percent
;   form (see exercise [2.12]).
;   
;   ------------------------------------------------------------------------
;   [Exercise 2.14]: http://sicp-book.com/book-Z-H-14.html#%_thm_2.14
;   [Exercise 2.12]: http://sicp-book.com/book-Z-H-14.html#%_thm_2.12
;   2.1.4 Extended Exercise: Interval Arithmetic - p97
;   ------------------------------------------------------------------------