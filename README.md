logbackbug-20180211
===

```
$ mvn clean package && ./run.sh
[INFO] Scanning for projects...
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building logback-20180209 1.0.0
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-clean-plugin:2.5:clean (default-clean) @ logback-20180209 ---
[INFO] 
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ logback-20180209 ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] Copying 1 resource
[INFO] 
[INFO] --- maven-compiler-plugin:3.7.0:compile (default-compile) @ logback-20180209 ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /home/someone/git/com.github/io7m/logback-bug-20180211/target/classes
[INFO] 
[INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ logback-20180209 ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] skip non existing resourceDirectory /home/someone/git/com.github/io7m/logback-bug-20180211/src/test/resources
[INFO] 
[INFO] --- maven-compiler-plugin:3.7.0:testCompile (default-testCompile) @ logback-20180209 ---
[INFO] No sources to compile
[INFO] 
[INFO] --- maven-surefire-plugin:2.12.4:test (default-test) @ logback-20180209 ---
[INFO] No tests to run.
[INFO] 
[INFO] --- maven-jar-plugin:2.4:jar (default-jar) @ logback-20180209 ---
[INFO] Building jar: /home/someone/git/com.github/io7m/logback-bug-20180211/target/logback-20180209-1.0.0.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 4.305 s
[INFO] Finished at: 2018-02-11T11:21:00Z
[INFO] Final Memory: 13M/46M
[INFO] ------------------------------------------------------------------------
+ cp /home/someone/.m2/repository/org/slf4j/slf4j-api/1.8.0-beta1/slf4j-api-1.8.0-beta1.jar target
+ cp /home/someone/.m2/repository/ch/qos/logback/logback-classic/1.3.0-alpha3/logback-classic-1.3.0-alpha3.jar target
+ cp /home/someone/.m2/repository/ch/qos/logback/logback-core/1.3.0-alpha3/logback-core-1.3.0-alpha3.jar target
+ rm -rf target/classes
+ java --module-path target --module com.io7m.bugs.logback/com.io7m.bugs.logback.Main
Exception in thread "main" java.lang.IllegalAccessError: class ch.qos.logback.core.joran.GenericConfigurator (in module ch.qos.logback.core) cannot access class org.xml.sax.InputSource (in module java.xml) because module ch.qos.logback.core does not read module java.xml
	at ch.qos.logback.core/ch.qos.logback.core.joran.GenericConfigurator.doConfigure(GenericConfigurator.java:108)
	at ch.qos.logback.core/ch.qos.logback.core.joran.GenericConfigurator.doConfigure(GenericConfigurator.java:53)
	at ch.qos.logback.classic/ch.qos.logback.classic.util.ContextInitializer.configureByResource(ContextInitializer.java:82)
	at ch.qos.logback.classic/ch.qos.logback.classic.util.ContextInitializer.autoConfig(ContextInitializer.java:157)
	at ch.qos.logback.classic/ch.qos.logback.classic.spi.LogbackServiceProvider.initializeLoggerContext(LogbackServiceProvider.java:49)
	at ch.qos.logback.classic/ch.qos.logback.classic.spi.LogbackServiceProvider.initialize(LogbackServiceProvider.java:40)
	at org.slf4j/org.slf4j.LoggerFactory.bind(LoggerFactory.java:153)
	at org.slf4j/org.slf4j.LoggerFactory.performInitialization(LoggerFactory.java:141)
	at org.slf4j/org.slf4j.LoggerFactory.getProvider(LoggerFactory.java:419)
	at org.slf4j/org.slf4j.LoggerFactory.getILoggerFactory(LoggerFactory.java:405)
	at org.slf4j/org.slf4j.LoggerFactory.getLogger(LoggerFactory.java:354)
	at org.slf4j/org.slf4j.LoggerFactory.getLogger(LoggerFactory.java:380)
	at com.io7m.bugs.logback/com.io7m.bugs.logback.Main.<clinit>(Main.java:8)

```
