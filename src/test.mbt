///|
test "arith::simple" {
  let parser = Parser::new()
  let src =
    #|1
    #|+
    #|2
    #|*
    #|3
    #|-
    #|4
    #|^
    #|2
    #|^
    #|2
  parser.init(src)
  try {
    let expr = parser.parse()
    println(expr)
  } catch {
    ExpectTokens(beg, end, tokens) =>
      println("At \{beg}-\{end} : expects \{tokens}")
  }
}
