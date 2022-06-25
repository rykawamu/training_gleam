import gleam/io
import gleam/int
import gleam/list
import gleam/string
import gleam/otp/process
import fizzbuzz/fizzbuzz

pub fn main() {
  list.range(1, 100)
  |> list.map(start_process)
  |> list.map(process.monitor_process)
  |> list.each(process.receive(_, 3))
  // Wait for them to finish
}

fn start_process(i) {
  process.start(fn() {
    let fizzbuzz_msg = fizzbuzz.to_fizzbuzz(i)
    let gobi_msg = fizzbuzz.to_gobi(i)
    let message =
      string.concat([int.to_string(i), " は ", fizzbuzz_msg, gobi_msg])
    io.println(message)
  })
}
