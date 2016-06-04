name := """swiss-guard-idl"""
organization := "com.example"

version := "1.0.0-SNAPSHOT"

scalaVersion := "2.11.7"

fork in run := true

lazy val versions = new {
  val finatra = "2.1.5"
}

javaOptions ++= Seq(
  "-Dlog.service.output=/dev/stderr",
  "-Dlog.access.output=/dev/stderr")

resolvers ++= Seq(
  Resolver.sonatypeRepo("releases"),
  "Twitter Maven" at "https://maven.twttr.com")

scroogeThriftDependencies in Compile := Seq(
  "finatra-thrift_2.11"
)

libraryDependencies ++= Seq(
  "com.twitter.finatra" %% "finatra-thrift" % versions.finatra
)
