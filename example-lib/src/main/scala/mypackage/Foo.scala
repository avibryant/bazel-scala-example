package mypackage

object Foo {
  val message = "hello world"

  def testLambdas = {
    for {
      a <- List(1)
      b <- List(2)
      c <- List(3)
      d <- List(4)
    } yield a + b + c + d
  }
}
