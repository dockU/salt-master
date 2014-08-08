FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>
EXPOSE 4505 4506

RUN pacman -Syu --needed --no-confirm salt
ADD run /service/salt/run
