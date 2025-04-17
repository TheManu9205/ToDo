FROM nginx

# Kopiert die HTML-Datei in den Container
COPY html/ /usr/share/nginx/html/

# Kopiert die Zertifikatsdateien in den Container
COPY certificate/ /etc/nginx/certificate/
#  Kopiert die NGINX Konfigurationsdateie

COPY conf/ /etc/nginx/conf.d/

#Veroeffentlicht den Port 80 und 443 im Container 
EXPOSE 80
EXPOSE 443
