# On prend une image ubuntu comme base
FROM ubuntu:latest

# On installe ce qu'il faut sur l'image
RUN apt-get update \
  && apt-get install -y \
  squid \
  dnsutils \
  nano \
  net-tools\
  iputils-ping
  
# On va copier le fichier de config créé dans l'image 
# COPY squid.conf /etc/squid

# Pour finir, on lance notre serveur Proxy
# CMD service squid start 

ENTRYPOINT ["tail", "-f", "/dev/null"]
