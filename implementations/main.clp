; CLIPS implementation <https://en.wikipedia.org/wiki/CLIPS>
; define fact "number-fact" with input number stored in slot "value"
(deffacts initial-facts
   ; replace 42 with your number for prime test
   (number-fact (value 42))
)

; register output-fact with value FALSE when "number-fact" is present
(defrule is-prime
   (number-fact)
   =>
   (assert (output-fact FALSE))
)
