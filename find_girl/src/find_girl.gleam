import gleam/io
import gleam/string
import gleam/list

pub fn main() {
  io.println("Hello from find_girl!")
  find_mygirl()
}

pub fn find_mygirl() {
  girls_profiles()
  |> list.map(find_girl)
  |> list.filter(fn(fg: Exam) { fg.result })
  |> list.first()
  |> string.inspect()
  |> io.println()
}

pub type Girl {
  Girl(name: String, shoesize: Int, hairstyle: String, haircolor: String)
}

pub type Exam {
  Exam(result: Bool, name: String)
}

pub fn find_girl(girl: Girl) {
  let name = girl.name
  let size = girl.shoesize
  let style = girl.hairstyle

  case size, style {
    37, "Long" -> Exam(True, name)
    _, _ -> Exam(False, name)
  }
}

pub fn girls_profiles() {
  [
    Girl(
      name: "ミオ",
      shoesize: 35,
      hairstyle: "Long",
      haircolor: "Light-Green",
    ),
    Girl(
      name: "サキ",
      shoesize: 36,
      hairstyle: "Short",
      haircolor: "Light-Blue",
    ),
    Girl(
      name: "ノゾミ",
      shoesize: 40,
      hairstyle: "Short",
      haircolor: "Green",
    ),
    Girl(
      name: "ミラ",
      shoesize: 40,
      hairstyle: "Semi-Long",
      haircolor: "Purple",
    ),
    Girl(
      name: "メグ",
      shoesize: 34,
      hairstyle: "Semi-Long",
      haircolor: "Brown",
    ),
    Girl(
      name: "シオリ",
      shoesize: 37,
      hairstyle: "Long",
      haircolor: "Dark-Red",
    ),
    Girl(
      name: "ビアンカ",
      shoesize: 38,
      hairstyle: "Long",
      haircolor: "Gold",
    ),
    Girl(
      name: "フローラ",
      shoesize: 36,
      hairstyle: "Long",
      haircolor: "Blue",
    ),
    Girl(
      name: "デボラ",
      shoesize: 39,
      hairstyle: "Short",
      haircolor: "Black",
    ),
    Girl(
      name: "ロザリー",
      shoesize: 38,
      hairstyle: "Long",
      haircolor: "Gold",
    ),
    Girl(
      name: "シンシア",
      shoesize: 37,
      hairstyle: "Long",
      haircolor: "Gold",
    ),
  ]
}
