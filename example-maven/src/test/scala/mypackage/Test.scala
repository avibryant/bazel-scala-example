package mypackage

import org.scalatest.flatspec.AnyFlatSpec

class TestSuite extends AnyFlatSpec {
  "things" should "work" in {
    assert(Maven.message == "hello world")
  }
}
