class Is_prime {
	public static inline function is_prime(number:Int):Bool
        return false;
}

class Main {
	public static function main() {
		for (number in 2...100)
			trace('${number} is${Is_prime.is_prime(number) ? "" : " NOT"} prime!');
	}
}