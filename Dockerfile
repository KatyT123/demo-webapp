FROM quay.io/ktsagara/tomcat10-builder:latest
LABEL Description="Tomcat webapp image to use with the JWS operator"
VOLUME /tmp

RUN git clone https://github.com/KatyT123/demo-webapp

RUN (cd demo-webapp; git checkout jws-qe; mvn install; cp target/demo-1.0.war /deployments/ROOT.war)
