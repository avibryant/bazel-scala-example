package example_scalding

import com.twitter.scalding._

object Job1 extends ExecutionApp {
  def job = Execution.from { println("hello") }
}
