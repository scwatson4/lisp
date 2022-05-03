; #6 Submission
 ;  ";" is used for comments

(defun checkAscending (L)
    (if (null L) ()) ; checks if list is nil
    (if (not (numberp (car L))) () ) ; checks if list contains non-numbers
    (if (and (numberp (car L)) (null (cdr L))) T ; last number in a list, or only number in a list
        (if (> (car L) (car(cdr L))) () (checkAscending (cdr L))))
)

(defun checkBigList (L)
    (if (null L) ()) ; list of lists is nil
    (if (checkAscending (car L)) ; if car is ordered
        (if (not (cdr L)) T ; car is ordered and no cdr left
            (checkBigList (cdr L))) ; check if cdr, then recurse on cdr
    )
)

; #6 Test Cases
; Test 1 - returns T
(write(checkBigList '((1 2 3) (2 3 4) (4 5 6))))
(terpri)

; Test 2 - returns T
(write(checkBigList '((1 2 3) (9) (4 5))))
(terpri)

; Test 3 - returns NIL
(write(checkBigList '((3 2 1) (1 2 3) (4 5 6))))
(terpri)

; Test 4 - returns NIL
(write(checkBigList '((1) (2) (9 8))))
(terpri)

; Test 5 - returns NIL
(write(checkBigList '((1) (2 1))))
(terpri)

; Test 6 - returns T
(write(checkBigList '((1))))

; ; Test 7 - returns NIL
; (write(checkBigList NIL))