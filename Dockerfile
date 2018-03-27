FROM nginx:latest

EXPOSE 80 8081

ENV DEBIAN_FRONTEND=noninteractive

COPY default.conf /etc/nginx/conf.d/

WORKDIR /app/html

RUN apt-get update \
	&& apt-get install -y apt-utils \
	&& apt-get install -my wget gnupg \
	&& apt-get install -y curl \
	&& curl -sL https://deb.nodesource.com/setup_8.x | bash \
	&& apt-get install -y nodejs \
	&& apt-get install -y build-essential \
	&& apt-get install -y git



