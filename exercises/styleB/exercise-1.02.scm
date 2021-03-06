#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 1.02")

;   Exercise 1.2
;   ============
;   
;   Translate the following expression into prefix form
;   
;   5 + 4 + (2 - (3 - (6 + 4/5)))
;   ─────────────────────────────
;          3(6 - 2)(2 - 7)
;   
;   ------------------------------------------------------------------------
;   [Exercise 1.2]:  http://sicp-book.com/book-Z-H-10.html#%_thm_1.2
;   1.1.6 Conditional Expressions and Predicates - p21
;   ------------------------------------------------------------------------