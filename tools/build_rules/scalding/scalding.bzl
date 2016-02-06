load("@bazel//tools/build_defs/scala:scala.bzl", "scala_library", "scala_binary", "scala_test")

# Macro to make building things with common dependencies easier:
def scalding_binary(name, srcs, visibility, main_class, deps = []):
  big_deps = []
  big_deps.extend(deps)
  big_deps.extend([
             "@apache_commons_cli//jar"
           , "@apache_commons_collections//jar"
           , "@apache_commons_logging//jar"
           , "@cascading_core_jar//jar"
           , "@cascading_local_jar//jar"
           , "@cascading_hadoop_jar//jar"
           , "@guava//jar"
           , "@kryo//jar"
           , "@hadoop_common//jar"
           , "@twitter_algebird_core_jar//jar"
           , "@twitter_bijection_core_jar//jar"
           , "@twitter_chill_algebird_jar//jar"
           , "@twitter_chill_hadoop_jar//jar"
           , "@twitter_chill_jar//jar"
           , "@twitter_chill_java_jar//jar"
           , "@twitter_scalding_args_jar//jar"
           , "@twitter_scalding_core_jar//jar"
           , "@twitter_scalding_date_jar//jar"
           , "@twitter_scalding_serialization_jar//jar"
           ])
  scala_binary(
    name = name,
    srcs = srcs,
    visibility = visibility,
    main_class = main_class,
    deps = big_deps)
