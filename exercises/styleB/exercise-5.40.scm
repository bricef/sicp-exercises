#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 5.40")

;   Exercise 5.40
;   =============
;   
;   Modify the compiler to maintain the compile-time environment as
;   described above.  That is, add a compile-time-environment argument to
;   compile and the various code generators, and extend it in
;   compile-lambda-body.
;   
;   ------------------------------------------------------------------------
;   [Exercise 5.40]: http://sicp-book.com/book-Z-H-35.html#%_thm_5.40
;   5.5.6 Lexical Addressing - p602
;   ------------------------------------------------------------------------