FROM debian

# Asterisk
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install dnsutils net-tools asterisk -y

# Récupération des fichiers dans le dossier de config
COPY sip.conf /etc/asterisk/sip.conf
COPY users.conf /etc/asterisk/users.conf
COPY extensions.conf /etc/asterisk/extensions.conf
COPY voicemail.conf /etc/asterisk/voicemail.conf
COPY asterisk.conf /etc/asterisk/asterisk.conf
COPY features.conf /etc/asterisk/features.conf


EXPOSE 5060/tcp 5060/udp

ENTRYPOINT [ "/usr/sbin/asterisk", "-f" ]