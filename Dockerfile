FROM debian:wheezy
MAINTAINER alex@wigen.net

ADD https://www.dropbox.com/download?plat=lnx.x86_64 /dropbox.tgz
RUN cd /home && tar xvzf /dropbox.tgz && rm /dropbox.tgz

RUN mkdir -p /home/.dropbox /home/Dropbox
ADD startup.sh /startup.sh
ADD rundropbox.sh /home/rundropbox.sh
RUN chmod +x /startup.sh /home/rundropbox.sh
CMD /startup.sh
