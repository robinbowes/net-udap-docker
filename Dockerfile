# DOCKER-VERSION 0.3.4
FROM        perl:latest
MAINTAINER  Robin Bowes <robin.bowes@yo61.com>

RUN cpanm Class::Accessor IO::Interface::Simple Log::StdLog Term::Shell

RUN cachebuster=b953b35 git clone https://github.com/robinbowes/net-udap.git
WORKDIR ./net-udap
EXPOSE 17784/udp
CMD [ "perl", "./scripts/udap_shell.pl" ]
