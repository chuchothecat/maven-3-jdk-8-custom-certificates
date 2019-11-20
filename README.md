#maven-3-jdk-8-custom-certificates

When using the normal maven image to build and push to private repositories or sonarqube java will throw a "pkix path building failed" error if using a self-signed certificate, a valid wildcard certificate, or a cert signed with an unknown CA. The easiest solution is to simply add your certificate to the java keystore on the maven image. 
