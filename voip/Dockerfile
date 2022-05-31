FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano

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



# Installation d'Asterisk 
WORKDIR /usr/local/src/
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18-current.tar.gz
RUN tar -xvzf asterisk-18-current.tar.gz
WORKDIR /usr/local/src/asterisk-18.6.0/
RUN ./configure
RUN make
RUN make install
RUN make samples
RUN make config

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


#Run asterisk
CMD ["asterisk", "-f"]
