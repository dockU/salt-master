FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>
EXPOSE 4505 4506

RUN pacman -Syu --needed --no-confirm salt

ADD saltcfg/etc/salt /etc/salt
ADD pillars /srv/pillar
ADD states /srv/salt
ADD run /service/salt/run
