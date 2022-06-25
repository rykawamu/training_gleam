import gleam/int

pub fn to_fizzbuzz(i) {
  case i % 3, i % 5 {
    0, 0 -> "FizzBuzz"
    0, _ -> "Fizz"
    _, 0 -> "Buzz"
    _, _ -> int.to_string(i)
  }
}

pub fn to_gobi(i) {
  case int.is_odd(i) {
    True -> "ですわ〜"
    False -> "ですのよー"
  }
}
