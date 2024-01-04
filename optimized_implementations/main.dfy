predicate is_prime(n:int){false}
method{:test}test(){assert forall n::n in [4,6,8,9,10] ==> !is_prime(n);}
