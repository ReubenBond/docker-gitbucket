FROM base/devel:latest
MAINTAINER Reuben Bond, reuben.bond@gmail.com

# Install OpenJDK 8
RUN \
  pacman -Syyu --noconfirm --noprogress && \
  pacman-db-upgrade && \
  pacman -Syyu --noconfirm --noprogress jre8-openjdk-headless

RUN mkdir /gitbucket && curl -o /gitbucket/gitbucket.war -L https://github.com/takezoe/gitbucket/releases/download/1.9/gitbucket.war

VOLUME ["/data"]
EXPOSE 8080
CMD /usr/bin/java -jar /gitbucket/gitbucket.war --port=8080 --gitbucket.home=/data
