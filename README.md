A minimal example of using bazel to build scala, with a library, binary, and tests.
```
bazel test example-lib:test
bazel run example-bin
```

Also includes an example of using https://github.com/bazelbuild/rules_jvm_external to use transitive maven dependencies.

```
bazel build example-maven
```

See the rules_jvm_external README for info on how to use the dependencies.

You may want to regenerate the maven-instal.json after changing depedencies with:

```
bazel run @unpinned_maven//:pin
```