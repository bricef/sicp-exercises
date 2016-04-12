#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 2.86")

;   Exercise 2.86
;   =============
;   
;   Suppose we want to handle complex numbers whose real parts, imaginary
;   parts, magnitudes, and angles can be either ordinary numbers, rational
;   numbers, or other numbers we might wish to add to the system.  Describe
;   and implement the changes to the system needed to accommodate this.  You
;   will have to define operations such as sine and cosine that are generic
;   over ordinary numbers and rational numbers.
;   
;   ------------------------------------------------------------------------
;   [Exercise 2.86]: http://sicp-book.com/book-Z-H-18.html#%_thm_2.86
;   2.5.2 Combining Data of Different Types - p202
;   ------------------------------------------------------------------------