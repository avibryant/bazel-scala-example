package mypackage

import org.scalatest._

class TestSuite extends FlatSpec {
  "things" should "work" in {
    assert(Foo.message == "hello world")
  }

  "call lambda test" should "work" in {
    assert(Foo.testLambdas == List(10))
  }
}
