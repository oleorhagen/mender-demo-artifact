FROM sebp/lighttpd
RUN mkdir -p '/var/www/localhost/htdocs'
WORKDIR /var/www/localhost
COPY . .
COPY index.html htdocs/
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/var/www/localhost/entrypoint.sh" ]