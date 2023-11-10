package mypackage

import com.twitter.algebird.Semigroup

object Maven {
  val message = Semigroup.plus("hello ", "world")
}
