#lang racket

; Section 3.4.2: Mechanisms for Controlling Concurrency

(require "common.rkt")

;   Exercise 3.39
;   =============
;   
;   Which of the five possibilities in the parallel execution shown above
;   remain if we instead serialize execution as follows:
;   
;   (define x 10)
;   
;   (define s (make-serializer))
;   
;   (parallel-execute (lambda () (set! x ((s (lambda () (* x x))))))
;                     (s (lambda () (set! x (+ x 1)))))
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.39]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.39
;   3.4.2 Mechanisms for Controlling Concurrency - p306
;   ------------------------------------------------------------------------

(-start- "3.39")



(--end-- "3.39")

;   ========================================================================
;   
;   Exercise 3.40
;   =============
;   
;   Give all possible values of x that can result from executing
;   
;   (define x 10)
;   
;   (parallel-execute (lambda () (set! x (* x x)))
;                     (lambda () (set! x (* x x x))))
;   
;   Which of these possibilities remain if we instead use serialized
;   procedures:
;   
;   (define x 10)
;   
;   (define s (make-serializer))
;   
;   (parallel-execute (s (lambda () (set! x (* x x))))
;                     (s (lambda () (set! x (* x x x)))))
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.40]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.40
;   3.4.2 Mechanisms for Controlling Concurrency - p306
;   ------------------------------------------------------------------------

(-start- "3.40")



(--end-- "3.40")

;   ========================================================================
;   
;   Exercise 3.41
;   =============
;   
;   Ben Bitdiddle worries that it would be better to implement the bank
;   account as follows (where the commented line has been changed):
;   
;   (define (make-account balance)
;     (define (withdraw amount)
;       (if (>= balance amount)
;           (begin (set! balance (- balance amount))
;                  balance)
;           "Insufficient funds"))
;     (define (deposit amount)
;       (set! balance (+ balance amount))
;       balance)
;     ;; continued on next page
;   
;     (let ((protected (make-serializer)))
;       (define (dispatch m)
;         (cond ((eq? m 'withdraw) (protected withdraw))
;               ((eq? m 'deposit) (protected deposit))
;               ((eq? m 'balance)
;                ((protected (lambda () balance)))) ; serialized
;               (else (error "Unknown request -- MAKE-ACCOUNT"
;                            m))))
;       dispatch))
;   
;   because allowing unserialized access to the bank balance can result in
;   anomalous behavior.  Do you agree?  Is there any scenario that
;   demonstrates Ben's concern?
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.41]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.41
;   3.4.2 Mechanisms for Controlling Concurrency - p306
;   ------------------------------------------------------------------------

(-start- "3.41")



(--end-- "3.41")

;   ========================================================================
;   
;   Exercise 3.42
;   =============
;   
;   Ben Bitdiddle suggests that it's a waste of time to create a new
;   serialized procedure in response to every withdraw and deposit message. 
;   He says that make-account could be changed so that the calls to
;   protected are done outside the dispatch procedure.  That is, an account
;   would return the same serialized procedure (which was created at the
;   same time as the account) each time it is asked for a withdrawal
;   procedure.
;   
;   (define (make-account balance)
;     (define (withdraw amount)
;       (if (>= balance amount)
;           (begin (set! balance (- balance amount))
;                  balance)
;           "Insufficient funds"))
;     (define (deposit amount)
;       (set! balance (+ balance amount))
;       balance)
;     (let ((protected (make-serializer)))
;       (let ((protected-withdraw (protected withdraw))
;             (protected-deposit (protected deposit)))
;         (define (dispatch m)
;           (cond ((eq? m 'withdraw) protected-withdraw)
;                 ((eq? m 'deposit) protected-deposit)
;                 ((eq? m 'balance) balance)
;                 (else (error "Unknown request -- MAKE-ACCOUNT"
;                              m))))
;         dispatch)))
;   
;   Is this a safe change to make?  In particular, is there any difference
;   in what concurrency is allowed by these two versions of make-account ?
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.42]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.42
;   3.4.2 Mechanisms for Controlling Concurrency - p307
;   ------------------------------------------------------------------------

(-start- "3.42")



(--end-- "3.42")

;   ========================================================================
;   
;   Exercise 3.43
;   =============
;   
;   Suppose that the balances in three accounts start out as $10, $20, and
;   $30, and that multiple processes run, exchanging the balances in the
;   accounts.  Argue that if the processes are run sequentially, after any
;   number of concurrent exchanges, the account balances should be $10, $20,
;   and $30 in some order. Draw a timing diagram like the one in figure
;   [3.29] to show how this condition can be violated if the exchanges are
;   implemented using the first version of the account-exchange program in
;   this section.  On the other hand, argue that even with this exchange
;   program, the sum of the balances in the accounts will be preserved. 
;   Draw a timing diagram to show how even this condition would be violated
;   if we did not serialize the transactions on individual accounts.
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.43]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.43
;   [Figure 3.29]:   http://sicp-book.com/book-Z-H-23.html#%_fig_3.29
;   3.4.2 Mechanisms for Controlling Concurrency - p309
;   ------------------------------------------------------------------------

(-start- "3.43")



(--end-- "3.43")

;   ========================================================================
;   
;   Exercise 3.44
;   =============
;   
;   Consider the problem of transferring an amount from one account to
;   another.  Ben Bitdiddle claims that this can be accomplished with the
;   following procedure, even if there are multiple people concurrently
;   transferring money among multiple accounts, using any account mechanism
;   that serializes deposit and withdrawal transactions, for example, the
;   version of make-account in the text above.
;   
;   (define (transfer from-account to-account amount)
;     ((from-account 'withdraw) amount)
;     ((to-account 'deposit) amount))
;   
;   Louis Reasoner claims that there is a problem here, and that we need to
;   use a more sophisticated method, such as the one required for dealing
;   with the exchange problem.  Is Louis right?  If not, what is the
;   essential difference between the transfer problem and the exchange
;   problem?  (You should assume that the balance in from-account is at
;   least amount.)
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.44]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.44
;   3.4.2 Mechanisms for Controlling Concurrency - p310
;   ------------------------------------------------------------------------

(-start- "3.44")



(--end-- "3.44")

;   ========================================================================
;   
;   Exercise 3.45
;   =============
;   
;   Louis Reasoner thinks our bank-account system is unnecessarily complex
;   and error-prone now that deposits and withdrawals aren't automatically
;   serialized. He suggests that make-account-and-serializer should have
;   exported the serializer (for use by such procedures as
;   serialized-exchange) in addition to (rather than instead of) using it to
;   serialize accounts and deposits as make-account did. He proposes to
;   redefine accounts as follows:
;   
;   (define (make-account-and-serializer balance)
;     (define (withdraw amount)
;       (if (>= balance amount)
;           (begin (set! balance (- balance amount))
;                  balance)
;           "Insufficient funds"))
;     (define (deposit amount)
;       (set! balance (+ balance amount))
;       balance)
;     (let ((balance-serializer (make-serializer)))
;       (define (dispatch m)
;         (cond ((eq? m 'withdraw) (balance-serializer withdraw))
;               ((eq? m 'deposit) (balance-serializer deposit))
;               ((eq? m 'balance) balance)
;               ((eq? m 'serializer) balance-serializer)
;               (else (error "Unknown request -- MAKE-ACCOUNT"
;                            m))))
;       dispatch))
;   
;   Then deposits are handled as with the original make-account:
;   
;   (define (deposit account amount)
;    ((account 'deposit) amount))
;   
;   Explain what is wrong with Louis's reasoning.  In particular, consider
;   what happens when serialized-exchange is called.
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.45]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.45
;   3.4.2 Mechanisms for Controlling Concurrency - p310
;   ------------------------------------------------------------------------

(-start- "3.45")



(--end-- "3.45")

;   ========================================================================
;   
;   Exercise 3.46
;   =============
;   
;   Suppose that we implement test-and-set! using an ordinary procedure as
;   shown in the text, without attempting to make the operation atomic. 
;   Draw a timing diagram like the one in figure [3.29] to demonstrate how
;   the mutex implementation can fail by allowing two processes to acquire
;   the mutex at the same time.
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.46]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.46
;   [Figure 3.29]:   http://sicp-book.com/book-Z-H-23.html#%_fig_3.29
;   3.4.2 Mechanisms for Controlling Concurrency - p313
;   ------------------------------------------------------------------------

(-start- "3.46")



(--end-- "3.46")

;   ========================================================================
;   
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

(-start- "3.47")



(--end-- "3.47")

;   ========================================================================
;   
;   Exercise 3.48
;   =============
;   
;   Explain in detail why the deadlock-avoidance method described above,
;   (i.e., the accounts are numbered, and each process attempts to acquire
;   the smaller-numbered account first) avoids deadlock in the exchange
;   problem.  Rewrite serialized-exchange to incorporate this idea. (You
;   will also need to modify make-account so that each account is created
;   with a number, which can be accessed by sending an appropriate message.)
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.48]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.48
;   3.4.2 Mechanisms for Controlling Concurrency - p314
;   ------------------------------------------------------------------------

(-start- "3.48")



(--end-- "3.48")

;   ========================================================================
;   
;   Exercise 3.49
;   =============
;   
;   Give a scenario where the deadlock-avoidance mechanism described above
;   does not work.  (Hint: In the exchange problem, each process knows in
;   advance which accounts it will need to get access to.  Consider a
;   situation where a process must get access to some shared resources
;   before it can know which additional shared resources it will require.)
;   
;   ------------------------------------------------------------------------
;   [Exercise 3.49]: http://sicp-book.com/book-Z-H-23.html#%_thm_3.49
;   3.4.2 Mechanisms for Controlling Concurrency - p315
;   ------------------------------------------------------------------------

(-start- "3.49")



(--end-- "3.49")
