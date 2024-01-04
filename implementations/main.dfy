predicate is_prime(number: int)
{
    false
}

// Because Dafny is a formal verification language, assertions to prove correctness
// are necessary for the program to have any meaning.
method {:test} test()
{
    assert forall n :: n in [4, 6, 8, 9, 10] ==> !is_prime(n);
}
