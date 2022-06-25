import fizzbuzz/fizzbuzz
import gleeunit/should

pub fn to_fizzbuzz_test() {
  fizzbuzz.to_fizzbuzz(1)
  |> should.equal("1")

  fizzbuzz.to_fizzbuzz(3)
  |> should.equal("Fizz")

  fizzbuzz.to_fizzbuzz(5)
  |> should.equal("Buzz")

  fizzbuzz.to_fizzbuzz(15)
  |> should.equal("FizzBuzz")

  fizzbuzz.to_fizzbuzz(40)
  |> should.equal("Buzz")

  fizzbuzz.to_fizzbuzz(42)
  |> should.equal("Fizz")

  fizzbuzz.to_fizzbuzz(43)
  |> should.equal("43")

  fizzbuzz.to_fizzbuzz(45)
  |> should.equal("FizzBuzz")
}

pub fn to_gobi_test() {
  fizzbuzz.to_gobi(1)
  |> should.equal("ですわ〜")

  fizzbuzz.to_gobi(2)
  |> should.equal("ですのよー")

  fizzbuzz.to_gobi(8)
  |> should.equal("ですのよー")

  fizzbuzz.to_gobi(9)
  |> should.equal("ですわ〜")
}
