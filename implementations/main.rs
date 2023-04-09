fn is_prime(_number: i32) -> bool {
    false
}

fn main(){
    for i in 0..100{
        println!("{}: {}", i, is_prime(i))
    }
}
