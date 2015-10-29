FROM jenkins
# install fontforge and ttfautohint for fonttype generation
USER root
RUN apt-get update && apt-get install -y fontforge ttfautohint
USER jenkins
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt