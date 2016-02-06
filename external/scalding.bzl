def _cascading_jar(module, ver):
  artif = "cascading:cascading-%s:%s" % (module, ver)
  native.maven_jar(
    name = "cascading_%s_jar" % module,
    artifact = artif,
    server = "concurrent_maven")
  native.bind(name = "cascading_" + module,
    actual = "@cascading_%s_jar//jar" % module)

def cascading(version):
  native.maven_server(
    name = "concurrent_maven",
    url = "http://conjars.org/repo")

  for mod in ["core", "hadoop", "local"]:
    _cascading_jar(mod, version)

def chill(version):
  scala_version = "_2.11"
  for (m, s) in [("-hadoop", ""), ("-java", ""),
      ("-bijection", scala_version), ("", scala_version), ("-algebird", scala_version)]:
    artif = "com.twitter:chill%s%s:%s" % (m, s, version)
    nm = m.replace("-", "_") # should not use - in names
    native.maven_jar(
      name = "twitter_chill%s_jar" % nm,
      artifact = artif)
    native.bind(name = "twitter_chill" + nm, 
     actual = "@chill%s_jar//jar" % m)
  native.maven_jar(name="kryo", artifact="com.esotericsoftware.kryo:kryo:2.21")

def twitter(proj, mods, version):
  for m in mods:
    artif = "com.twitter:%s-%s_2.11:%s" % (proj, m, version)
    native.maven_jar(
      name = "twitter_%s_%s_jar" % (proj, m),
      artifact = artif)
    native.bind(name = "twitter_%s_%s" % (proj, m) ,
      actual = "@twitter_%s_%s_jar//jar" % (proj, m))

def hadoop(hadoop_version):
  native.maven_jar(name="hadoop_common", artifact="org.apache.hadoop:hadoop-common:%s" % hadoop_version)
  native.maven_jar(name="hadoop_client", artifact="org.apache.hadoop:hadoop-mapreduce-client-core:%s" % hadoop_version)

def apache_commons(mod, version):
  native.maven_jar(name="apache_commons_" + mod, artifact="commons-%s:commons-%s:%s" % (mod, mod, version))

def guava(version):
  native.maven_jar(name="guava", artifact="com.google.guava:guava:%s" % version)

