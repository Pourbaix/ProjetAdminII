FROM romeoz/docker-apache-php

# Installez quelques outils utiles pour le débogage
RUN apt-get update && apt full-upgrade -y \
    && apt-get install nano -y

# Ajoutez les fichiers nécessaires au serveur apache pour initialiser tous les hôtes virtuels.
ADD ./www/ /var/www/
ADD ./sites-available/ /etc/apache2/sites-available/

# Encryption port 443 configuration files
RUN apt-get install -y software-properties-common 
RUN apt-get install -y python3-certbot-apache

# Fichiers de configuration pour le chiffrement du port 443 et des erreurs.
COPY apache2.conf /etc/apache2/apache2.conf

# Activez les Virtulhosts. (avoir plusieurs site dans un même serveur)
# ADD NEW VirtualHosts HERE ! 
RUN a2ensite b2b.conf
RUN a2ensite www.conf

# Redémarrez le service apache pour "activer" les hôtes virtuels
RUN service apache2 start

# activer le HTTPS
RUN a2enmod ssl
RUN service apache2 restart

# certbot --apache
WORKDIR /var/www/
