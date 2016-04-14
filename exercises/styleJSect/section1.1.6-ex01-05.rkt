#lang racket

; Section 1.1.6: Conditional Expressions and Predicates

(require "common.rkt")

;   Exercise 1.1
;   ============
;   
;   Below is a sequence of expressions. What is the result printed by the
;   interpreter in response to each expression?  Assume that the sequence is
;   to be evaluated in the order in which it is presented.
;   
;   10
;   (+ 5 3 4)
;   (- 9 1)
;   (/ 6 2)
;   (+ (* 2 4) (- 4 6))
;   (define a 3)
;   (define b (+ a 1))
;   (+ a b (* a b))
;   (= a b)
;   (if (and (> b a) (< b (* a b)))
;       b
;       a)
;   (cond ((= a 4) 6)
;         ((= b 4) (+ 6 7 a))
;         (else 25))
;   (+ 2 (if (> b a) b a))
;   (* (cond ((> a b) a)
;            ((< a b) b)
;            (else -1))
;      (+ a 1))
;   
;   ------------------------------------------------------------------------
;   [Exercise 1.1]:  http://sicp-book.com/book-Z-H-10.html#%_thm_1.1
;   1.1.6 Conditional Expressions and Predicates - p20
;   ------------------------------------------------------------------------

(-start- "1.1")



(--end-- "1.1")

;   ========================================================================
;   
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

(-start- "1.2")



(--end-- "1.2")

;   ========================================================================
;   
;   Exercise 1.3
;   ============
;   
;   Define a procedure that takes three numbers as arguments and returns the
;   sum of the squares of the two larger numbers.
;   
;   ------------------------------------------------------------------------
;   [Exercise 1.3]:  http://sicp-book.com/book-Z-H-10.html#%_thm_1.3
;   1.1.6 Conditional Expressions and Predicates - p21
;   ------------------------------------------------------------------------

(-start- "1.3")



(--end-- "1.3")

;   ========================================================================
;   
;   Exercise 1.4
;   ============
;   
;   Observe that our model of evaluation allows for combinations whose
;   operators are compound expressions.  Use this observation to describe
;   the behavior of the following procedure:
;   
;   (define (a-plus-abs-b a b)
;     ((if (> b 0) + -) a b))
;   
;   ------------------------------------------------------------------------
;   [Exercise 1.4]:  http://sicp-book.com/book-Z-H-10.html#%_thm_1.4
;   1.1.6 Conditional Expressions and Predicates - p21
;   ------------------------------------------------------------------------

(-start- "1.4")



(--end-- "1.4")

;   ========================================================================
;   
;   Exercise 1.5
;   ============
;   
;   Ben Bitdiddle has invented a test to determine whether the interpreter
;   he is faced with is using applicative-order evaluation or normal-order
;   evaluation.  He defines the following two procedures:
;   
;   (define (p) (p))
;   
;   (define (test x y)
;     (if (= x 0)
;         0
;         y))
;   
;   Then he evaluates the expression
;   
;   (test 0 (p))
;   
;   What behavior will Ben observe with an interpreter that uses
;   applicative-order evaluation?  What behavior will he observe with an
;   interpreter that uses normal-order evaluation?  Explain your answer.
;   (Assume that the evaluation rule for the special form if is the same
;   whether the interpreter is using normal or applicative order: The
;   predicate expression is evaluated first, and the result determines
;   whether to evaluate the consequent or the alternative expression.)
;   
;   ------------------------------------------------------------------------
;   [Exercise 1.5]:  http://sicp-book.com/book-Z-H-10.html#%_thm_1.5
;   1.1.6 Conditional Expressions and Predicates - p21
;   ------------------------------------------------------------------------

(-start- "1.5")



(--end-- "1.5")

