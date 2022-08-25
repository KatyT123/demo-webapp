FROM quay.io/ktsagara/image-builder-jws
LABEL Description="Tomcat webapp image to use with the JWS operator"
VOLUME /tmp

RUN uname -a

# The script just tests that the builder is build a war nothing else (adjust it to your need)
RUN (cd /tmp; git clone https://github.com/KatyT123/demo-webapp.git; cd demo-webapp; git checkout jws-qe; mvn install; if [ -d /deployments ]; then cp target/demo-1.0.war /deployments/ROOT.war; fi)

