///|
test "arith::simple" {
  let parser = Parser::new()
  parser.init("1 + 2 * 3 - 4 ^ 2 ^ 2")
  guard parser.parse() is Some(expr) else {  }
  println(expr)
}
