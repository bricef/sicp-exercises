#lang racket
(require "../utils.scm")
(require "../meta.scm")

(title "Exercise 3.47")

;   Exercise 3.47
;   =============
;   
;   A semaphore (of size n) is a generalization of a mutex.  Like a mutex, a
;   semaphore supports acquire and release operations, but it is more
;   general in that up to n processes can acquire it concurrently. 
;   Additional processes that attempt to acquire the semaphore must wait for
;   release operations.  Give implementations of semaphores
;   
;   a. in terms of mutexes
;   
;   b. in terms of atomic test-and-set! operations.
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.47]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.47
;   3.4.2 Mechanisms for Controlling Concurrency - p313
;   ------------------------------------------------------------------------