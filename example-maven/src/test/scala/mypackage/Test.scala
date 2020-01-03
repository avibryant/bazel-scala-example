package mypackage

import org.scalatest._

class TestSuite extends FlatSpec {
  "things" should "work" in {
    assert(Maven.message == "hello world")
  }
}
