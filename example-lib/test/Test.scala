import org.scalatest._

class TestSuite extends FlatSpec {
  "things" should "work" in {
    assert(Foo.message == "hello world")
  }
}
