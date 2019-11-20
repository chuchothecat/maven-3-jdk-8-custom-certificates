#maven-3-jdk-8-custom-certificates

When using the normal maven image to build and push to private nexus repositories or sonarqube java will throw a "pkix path building failed" error if using a self-signed certificate, a valid wildcard certificate, or a cert signed with an unknown CA. The easiest solution is to simply add your certificate to the java keystore on the maven image. 

TO USE:
Clone the repo.
Add the certificate you wish to add to the java keystore in the same path
Update the my-server.crt with your ceritificate name in both locations in the Dockerfile.
docker build .
Use the new image as your base for building projects and pushing them to your sonarqube or nexus instances. 
