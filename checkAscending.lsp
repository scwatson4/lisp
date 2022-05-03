(defun checkAscending (L)
    (if (null? L) ()) ; checks if list is nil
    (if (not (number? (car L))) () ) ; checks if list contains non-numbers
    (if (and (number? (car L)) (null? (cdr L))) T ; last number in a list, or only number in a list
        (if (> (car L) (car(cdr L))) () (checkAscending (cdr L))))
)

; Test Cases
; Test 1 - returns T
(write (checkAscending (list 1 2 3)))
(terpri)

; Test 2 - returns NIL
(write (checkAscending (list 3 2 1)))
(terpri)

; Test 3 - returns T
(write (checkAscending (list 3 3 3)))
(terpri)

; Test 4 - returns T
(write (checkAscending (list 1 2 3 4 5 6 7 8 9)))
(terpri)

; Test 5 - returns NIL ; NIL list
(write (checkAscending NIL))
(terpri)

; Test 6 - returns T ; list with single value NIL
(write (checkAscending (list 1)))
(terpri)