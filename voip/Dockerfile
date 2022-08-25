FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano
RUN apt-get install -y vim

# Doc Asterisk : https://doc.ubuntu-fr.org/asterisk
# Installation des dépendances
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install -y \
  apt-utils \
  build-essential \
  wget \
  openssl \
  libxml2-dev \
  libncurses5-dev \
  uuid-dev \
  sqlite3 \
  libsqlite3-dev \
  pkg-config \
  libjansson-dev \
  libedit-dev \
  libssl-dev

RUN echo "Europe/Brussels" | tee /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata



# Installation d'Asterisk + Fail2Ban
WORKDIR /usr/local/src/
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-16.9.0.tar.gz
RUN tar -xvzf asterisk-16.9.0.tar.gz
WORKDIR /usr/local/src/asterisk-16.9.0/
RUN ./configure
RUN make
RUN make install
RUN make samples
RUN make config

RUN apt-get -y install fail2ban

COPY ./fichiers/users.conf /etc/asterisk/users.conf
COPY ./fichiers/sip.conf /etc/asterisk/sip.conf
COPY ./fichiers/extensions.conf /etc/asterisk/extensions.conf
COPY ./fichiers/voicemail.conf /etc/asterisk/voicemail.conf
COPY ./fichiers/features.conf /etc/asterisk/features.conf
COPY ./fichiers/logger.conf /etc/asterisk/logger.conf
COPY ./fichiers/jail.conf /etc/fail2ban/jail.conf
COPY ./fichiers/asterisk.conf /etc/fail2ban/filter.d/asterisk.conf
EXPOSE 5060/udp
EXPOSE 5060/tcp


RUN /etc/init.d/fail2ban start
RUN mkdir /etc/asterisk/keys


EXPOSE 19000-20000/udp

#Run asterisk
CMD ["asterisk", "-f"]
