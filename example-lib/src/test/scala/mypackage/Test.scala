package mypackage

import org.scalatest.flatspec.AnyFlatSpec

class TestSuite extends AnyFlatSpec {
  "things" should "work" in {
    assert(Foo.message == "hello world")
  }

  "call lambda test" should "work" in {
    assert(Foo.testLambdas == List(10))
  }
}
