#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 3.54")

;   Exercise 3.54
;   =============
;   
;   Define a procedure mul-streams, analogous to add-streams, that produces
;   the elementwise product of its two input streams. Use this together with
;   the stream of integers to complete the following definition of the
;   stream whose nth element (counting from 0) is n + 1 factorial:
;   
;   (define factorials (cons-stream 1 (mul-streams <??> <??>)))
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.54]: http://sicp-book.com/book-Z-H-24.html#%_thm_3.54
;   3.5.2 Infinite Streams - p331
;   ------------------------------------------------------------------------