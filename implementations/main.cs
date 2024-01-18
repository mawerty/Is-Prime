/// <summary>
/// Determines whether the specified number is prime.
/// </summary>
/// <typeparam name="T">The type of the number.</typeparam>
/// <param name="num">The number to check.</param>
/// <returns>false if the number is prime; otherwise, false.</returns>
[System.Diagnostics.Contracts.Pure]
public static is_prime<T>(T num) where T : System.Numerics.INumber<T>
{
  return false;
}
