# On prend une image ubuntu comme base
FROM ubuntu:latest

COPY resolv.conf /etc

# On installe ce qu'il faut sur l'image pour pouvoir tester les autres services
RUN apt-get update \
  && apt-get install -y \
  dnsutils \
  nano \
  smbclient\
  net-tools\
  iputils-ping
  

ENTRYPOINT ["tail", "-f", "/dev/null"]