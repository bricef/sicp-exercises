#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 2.27")

;   Exercise 2.27
;   =============
;   
;   Modify your reverse procedure of exercise [2.18] to produce a
;   deep-reverse procedure that takes a list as argument and returns as its
;   value the list with its elements reversed and with all sublists
;   deep-reversed as well.  For example,
;   
;   (define x (list (list 1 2) (list 3 4)))
;   
;   x
;   ((1 2) (3 4))
;   
;   (reverse x)
;   ((3 4) (1 2))
;   
;   (deep-reverse x)
;   ((4 3) (2 1))
;   
;   ------------------------------------------------------------------------
;   [Exercise 2.27]: http://sicp-book.com/book-Z-H-15.html#%_thm_2.27
;   [Exercise 2.18]: http://sicp-book.com/book-Z-H-15.html#%_thm_2.18
;   2.2.2 Hierarchical Structures - p110
;   ------------------------------------------------------------------------