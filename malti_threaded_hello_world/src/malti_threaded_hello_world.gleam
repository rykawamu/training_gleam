import gleam/io
import gleam/int
import gleam/list
import gleam/string
import gleam/otp/process

pub fn main() {
  list.range(0, 1000)
  |> list.map(start_process)
  |> list.map(process.monitor_process)
  |> list.each(process.receive(_, 3))
  // Wait for them to finish
}

fn start_process(i) {
  process.start(fn() {
    let message = string.append("Hello world: ", int.to_string(i))
    io.println(message)
  })
}
