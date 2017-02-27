FROM jamesrwhite/minicron:v0.9.7
MAINTAINER Porchn <pichai.chin@gmail.com>

RUN apt-get install -y --no-install-recommends \
	openssh-server \
	openssh-client \
	&& /etc/init.d/ssh start
	
RUN minicron db setup

EXPOSE 9292
CMD ["minicron", "server", "start"]