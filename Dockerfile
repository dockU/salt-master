FROM docku/base
MAINTAINER Jon Chen <bsd@voltaire.sh>
EXPOSE 4505 4506

RUN pacman -Syu --needed --noconfirm salt

ADD install_salt.sh /tmp/
RUN /tmp/install_salt.sh -P git v2014.7.0

ADD saltcfg/etc/salt /etc/salt
ADD pillars /srv/pillar
ADD states /srv/salt

ADD run /service/salt/run
