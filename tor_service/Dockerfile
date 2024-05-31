FROM ubuntu

WORKDIR /

COPY . .

RUN apt update -y
RUN apt install nginx -y
RUN apt install tor -y
RUN mkdir /var/lib/tor/hitman
RUN chmod 700 /var/lib/tor/hitman
RUN chmod +x /var
RUN chmod +x /var/lib
RUN chmod +x /var/lib/tor
RUN mv default /etc/nginx/sites-available/default
RUN mv index.html /var/lib/tor/hitman/
RUN sed -i 's|#HiddenServiceDir /var/lib/tor/hidden_service/|HiddenServiceDir /var/lib/tor/hitman/|g' /etc/tor/torrc
RUN sed -i '0,/#HiddenServicePort 80 127.0.0.1:80/s//HiddenServicePort 80 127.0.0.1:34002/' /etc/tor/torrc

EXPOSE 34002

CMD ["sh", "-c", "nginx && tor"]
