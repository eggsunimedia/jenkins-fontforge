FROM jenkins
# install fontforge and ttfautohint for fonttype generation
USER root
RUN apt-get update && apt-get install fontforge ttfautohint
USER jenkins # drop back to the regular jenkins user - good practice
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt