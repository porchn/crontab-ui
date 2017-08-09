FROM jamesrwhite/minicron:v0.9.7
MAINTAINER Porchn <pichai.chin@gmail.com>

ENV TZ=Asia/Bangkok

# Set the timezone.
RUN echo $TZ > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
 
RUN rm -f /etc/service/sshd/down
#RUN mkdir -p /etc/minicron
#ADD ./setup/minicron.toml /etc/minicron
#RUN ln -s /etc/minicron/minicron.toml /etc/minicron.toml

#VOLUME ['/etc/minicron']

EXPOSE 9292

CMD ['minicron','server','--debug']
