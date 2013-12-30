FROM base/devel:latest
MAINTAINER Reuben Bond, reuben.bond@gmail.com
RUN yaourt --noconfirm -Syyua jdk

RUN mkdir /gitbucket && curl -o /gitbucket/gitbucket.war -L https://github.com/takezoe/gitbucket/releases/download/1.9/gitbucket.war

VOLUME ["/data"]
EXPOSE 8080
CMD /opt/java/bin/java -jar /gitbucket/gitbucket.war --port=8080 --gitbucket.home=/data
