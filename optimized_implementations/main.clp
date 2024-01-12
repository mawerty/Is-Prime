(deffacts initial-facts (number-fact(value 42)))
(defrule is-prime (number-fact)=>(assert(output-fact FALSE)))
