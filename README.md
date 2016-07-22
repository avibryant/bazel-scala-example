A minimal example of using bazel to build scala, with a library, binary, and tests.
```
bazel test example-lib:test
bazel run example-bin
```

Also includes an example of using https://github.com/johnynek/bazel-deps to generate transitive maven dependencies into `3rdparty` from `maven-dependencies.yaml`

```
bazel build example-maven
```

See the bazel-deps README for info on the YAML file format and what to do after modifying it.
