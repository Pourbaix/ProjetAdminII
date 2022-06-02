# On prend une image ubuntu comme base
FROM ubuntu:latest

# On installe ce qu'il faut sur l'image pour pouvoir tester les autres services
RUN apt-get update \
  && apt-get install -y \
  dnsutils \
  nano \
  smbclient\
  net-tools\
  dnsutils

ENTRYPOINT ["tail", "-f", "/dev/null"]