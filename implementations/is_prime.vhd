ENTITY is_prime IS 
	PORT( 
		x : in integer;
		is_prime : out bit
	);
END is_prime;

ARCHITECTURE its_primin_time OF is_prime IS 
BEGIN 
	is_prime <= '0';
END its_primin_time;